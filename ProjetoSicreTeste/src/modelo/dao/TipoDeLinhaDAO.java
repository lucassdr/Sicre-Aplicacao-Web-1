package modelo.dao;

import java.util.List;

import javax.persistence.EntityManager;

import dominio.TipoDeLinha;

public class TipoDeLinhaDAO {
	
	private EntityManager manager;
	
	public TipoDeLinhaDAO() {
		super();
		
		this.manager = JPAUtil.getEntityManager();
	}
	
	public TipoDeLinha salvar(TipoDeLinha tip) {
		this.manager.getTransaction().begin();
		TipoDeLinha novo = this.manager.merge(tip);
		this.manager.getTransaction().commit();
		return novo;
	}
	
	public void excluir(TipoDeLinha tip) {
		this.manager.getTransaction().begin();
		this.manager.remove(tip);
		this.manager.getTransaction().commit();
	}

	public TipoDeLinha obter(Integer codigo) {
		return this.manager.find(TipoDeLinha.class, codigo);
	}

	public List<TipoDeLinha> listar() {
		
		String jpql = "from TipoDeLinha p  order by p.nome";

		List<TipoDeLinha> lista = this.manager.createQuery(jpql, TipoDeLinha.class).getResultList();

		return lista;
	}
	
	
}
