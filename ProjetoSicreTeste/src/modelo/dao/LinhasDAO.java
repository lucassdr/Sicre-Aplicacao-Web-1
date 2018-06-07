package modelo.dao;

import java.util.List;

import javax.persistence.EntityManager;

import dominio.Linhas;


public class LinhasDAO {

	private EntityManager manager;

	public LinhasDAO() {

		super();
		this.manager = JPAUtil.getEntityManager();
	}

	public Linhas salvar(Linhas linhas) {
		this.manager.getTransaction().begin();
		Linhas nova = this.manager.merge(linhas);
		this.manager.getTransaction().commit();
		return nova;
	}

	public void excluir(Linhas linhas) {
		this.manager.getTransaction().begin();
		//TODO tratar erro ao excluir uma linha já excluida
		this.manager.remove(linhas);
		this.manager.getTransaction().commit();
	}

	public Linhas obter(Integer idLinha) {
		return this.manager.find(Linhas.class, idLinha);
	}

	public List<Linhas> listar() {
		String jpql = "from Linhas l order by l.idLinha";
		
		List<Linhas> lista = this.manager.createQuery(jpql, Linhas.class).getResultList();
		
		return lista;
	}

}
