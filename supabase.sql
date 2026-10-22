-- Plak dit in Supabase > SQL Editor en klik op Run.
create table if not exists public.potje_docs (
  col text not null,
  id text not null,
  data jsonb not null,
  updated_at timestamptz not null default now(),
  primary key (col, id)
);

alter table public.potje_docs enable row level security;

grant select, insert, update, delete on public.potje_docs to anon;

drop policy if exists "potje lezen" on public.potje_docs;
drop policy if exists "potje toevoegen" on public.potje_docs;
drop policy if exists "potje wijzigen" on public.potje_docs;
drop policy if exists "potje verwijderen" on public.potje_docs;

create policy "potje lezen" on public.potje_docs for select to anon using (true);
create policy "potje toevoegen" on public.potje_docs for insert to anon with check (true);
create policy "potje wijzigen" on public.potje_docs for update to anon using (true) with check (true);
create policy "potje verwijderen" on public.potje_docs for delete to anon using (true);
