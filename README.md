# Neon Breach

Protótipo FPS 3D em Three.js.

```bash
npm install
npm run dev
```

Abra a URL exibida no terminal. Use WASD para mover, mouse para mirar, clique para atirar e Shift para correr.

## Modelo 3D

O zumbi animado em `public/models/zombie.glb` foi criado por **whynomakethings** e disponibilizado para uso em projetos na página [Zombie.glb 3D model with animations](https://whynomakethings.itch.io/zombieglb-3d-model-with-animations). O arquivo inclui animações idle, ataque, impacto, morte e caminhada.

O modelo solicitado do PVZ foi convertido para materiais PBR modernos em `public/models/pvz-zombie-pbr.glb`. O jogo dá prioridade automática a esse arquivo e mantém o zumbi anterior como fallback. Modelo: **Zombie - PVZ Garden Warfare**, por Nazar Okruzhko, licença CC BY 4.0.

Os modelos Buckethead, Football Zombie e AK-47 enviados para o projeto também foram integrados. Os dois zumbis foram convertidos para PBR moderno e usados como inimigos Tier 2 e Tier 3; a AK-47 substitui visualmente a pistola, mantendo-a como fallback se o modelo não carregar.

O Gargantuar enviado pelo GitHub aparece como boss a cada 10 ondas. O primeiro tem 500 de vida e os seguintes crescem fortemente (850, 1445, ...). Durante essas ondas, o jogador recebe metralhadora ilimitada e as caixas de munição deixam de nascer. O boss carrega periodicamente um núcleo que invoca 10 orbes ao seu redor, lançando uma a cada 0,3 segundo; cada orbe é rápido, mas pode ser destruído com um tiro antes de alcançar o jogador.
