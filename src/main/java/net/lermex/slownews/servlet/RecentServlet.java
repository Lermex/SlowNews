package net.lermex.slownews.servlet;

import net.lermex.slownews.model.NewsItem;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/recent")
public class RecentServlet extends HttpServlet {

    private static final Logger LOG = LoggerFactory.getLogger(RecentServlet.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        final List<NewsItem> recentNews = new ArrayList<>();
        recentNews.add(new NewsItem("Пример русского текста",
                                    "https://upload.wikimedia.org/wikipedia/commons/1/19/Pluie_Alsacienne.JPG",
                                    "Local people seen drinking tea angrily"));
        recentNews.add(new NewsItem("Baby Suing Parents for Medical Fraud",
                                    "https://upload.wikimedia.org/wikipedia/commons/a/a7/Lasvegascourthouse.jpg",
                                    "The magically detachable finger turned out to be attached to another hand"));

        req.getSession().setAttribute("recentNews", recentNews);
        req.getRequestDispatcher("/WEB-INF/view/recent.jsp").forward(req, resp);
    }

}
