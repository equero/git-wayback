-- Manual migration — add evolution_snapshots.pushed_at.
--
-- The schema gained `pushedAt` in v0.7.41 (cache revalidation on the repo's
-- pushed_at), but no migration added the column. Every cache read and write
-- has failed since with `column "pushed_at" does not exist`, so the evolution
-- endpoint fetched from GitHub on every request instead of using the cache.
--
-- Nullable, like the schema: rows written before it simply have no value and
-- fall back to the plain cache TTL. Idempotent.

ALTER TABLE "evolution_snapshots" ADD COLUMN IF NOT EXISTS "pushed_at" timestamp;
