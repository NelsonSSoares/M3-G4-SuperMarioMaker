select count(id) as Qtd_paises, flag from players
group by flag
order by Qtd_paises desc;