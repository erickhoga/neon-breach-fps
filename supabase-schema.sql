create table if not exists public.scores (
  nickname text primary key check (char_length(nickname) between 1 and 16),
  kills integer not null default 0 check (kills >= 0),
  wave integer not null default 1 check (wave >= 1),
  updated_at timestamptz not null default now()
);
alter table public.scores enable row level security;
create policy "ranking publico para leitura" on public.scores for select to anon using (true);
create policy "ranking casual permite inserir" on public.scores for insert to anon with check (true);
create policy "ranking casual permite atualizar" on public.scores for update to anon using (true) with check (true);
alter publication supabase_realtime add table public.scores;
