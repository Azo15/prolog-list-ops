# Lists.pl — Basit Liste İşlemleri (Prolog)

Kısa: küçük yardımcı predicate’ler içeren Prolog dosyası. SWI‑Prolog ile çalışır.

Gereksinim
- SWI‑Prolog

Predicate açıklamaları (kısa)
- eleman(X, List): X, List içindeyse true.
- ekle(List, NewList, X): List'e X ekler; X zaten varsa listeyi değiştirmez (tekrarı engeller).
- tersi(List, Rev): List'in tersini verir. (Eklenme kuralı nedeniyle tekrarlar bir kez görünür.)
- sil(List, Result, X): List'ten X'in tüm örneklerini çıkarır.
- a2b(In, Out): In içindeki 'a' atomlarını 'b' yapar; diğerleri aynı.

Örnek sorgular
- ?- eleman(a, [a,b,c]).          % true
- ?- ekle([], L, a).              % L = [a].
- ?- ekle([b,c], L, a).           % L = [b,c,a].
- ?- ekle([b,a,c], L, a).         % L = [b,a,c].  (a zaten var)
- ?- tersi([a,b,c], R).           % R = [c,b,a].
- ?- tersi([a,b,a], R).           % R = [a,b] (tekrarlar filtrelenir)
- ?- sil([a,b,a], R, a).          % R = [b]
- ?- a2b([a,x,a], R).             % R = [b,x,b]

İpucu: trace ile adım adım çalıştırma
- ?- trace.
- ?- tersi([a,b], R).
