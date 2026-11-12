import {
    getAllCategories,
    getCategoryDetails
} from '../models/categories.js';
import { getProjectsByCategoryId } from '../models/projects.js';

const showCategoriesPage = async (req, res) => {
    const categories = await getAllCategories();
    const title = 'Service Categories';

    res.render('categories', { title, categories });
};

const showCategoryDetailsPage = async (req, res) => {
    const category = await getCategoryDetails(req.params.id);

    if (!category) {
        return res.status(404).render('errors/404', {
            title: 'Page Not Found'
        });
    }

    const projects = await getProjectsByCategoryId(req.params.id);
    const title = 'Category Details';

    res.render('category', { title, category, projects });
};

export { showCategoriesPage, showCategoryDetailsPage };