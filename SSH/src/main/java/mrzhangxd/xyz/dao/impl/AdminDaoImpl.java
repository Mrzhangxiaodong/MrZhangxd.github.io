package mrzhangxd.xyz.dao.impl;

import mrzhangxd.xyz.dao.AdminDao;
import mrzhangxd.xyz.pojo.Admin;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import java.util.List;

public class AdminDaoImpl extends HibernateDaoSupport implements AdminDao {

    /**
     * 登录
     */
    public Admin login(Admin admin) {
        //使用QBC的查询
        DetachedCriteria criteria = DetachedCriteria.forClass(Admin.class);
        criteria.add(Restrictions.eq("adminname", admin.getAdminname()));
        criteria.add(Restrictions.eq("password", admin.getPassword()));
        //查询
        List<Admin> list = (List<Admin>) this.getHibernateTemplate().findByCriteria(criteria);
        if (list != null && list.size() > 0) {
            return list.get(0);
        }
        return null;
    }

}
