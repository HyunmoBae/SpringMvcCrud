package com.bhm.test;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BookController {
	@Autowired
	BookService bookService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView indexPage(@RequestParam Map<String, Object> map) {
		List<Map<String, Object>> list = this.bookService.list(map);
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("book", list);
		if (map.containsKey("keyword")) {
			bookService.detail(map);
			mav.addObject("keyword", map.get("keyword"));
		}
		mav.setViewName("book/index");
	
		return mav;
	}

	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public ModelAndView create() {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("book/create");
		return mav;
	}

	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public ModelAndView createPost(@RequestParam Map<String, Object> map) {
		ModelAndView mav = new ModelAndView();

		String bookId = this.bookService.create(map);
		if (bookId == null) {
			mav.setViewName("redirect:/create");
		} else {
			mav.setViewName("redirect:/detail?bookId=" + bookId);
		}
		return mav;
	}

	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public ModelAndView detail(@RequestParam Map<String, Object> map) {
		Map<String, Object> detailMap = this.bookService.detail(map);
		ModelAndView mav = new ModelAndView();
		mav.addObject("book", detailMap);
		mav.setViewName("/book/detail");
		return mav;
	}

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView update(@RequestParam Map<String, Object> map) {
		Map<String, Object> detailMap = this.bookService.detail(map);

		ModelAndView mav = new ModelAndView();
		mav.addObject("book", detailMap);
		mav.setViewName("/book/update");
		return mav;
	}

	@RequestMapping(value = "update", method = RequestMethod.POST)
	public ModelAndView updatePost(@RequestParam Map<String, Object> map) {
		ModelAndView mav = new ModelAndView();

		boolean isUpdateSuccess = this.bookService.update(map);
		if (isUpdateSuccess) {
			mav.setViewName("redirect:/detail?bookId=" + map.get("bookId"));
		} else {
			mav = this.update(map);
		}
		return mav;
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public ModelAndView deletePost(@RequestParam Map<String, Object> map) {
		System.out.println(map);
		ModelAndView mav = new ModelAndView();
		boolean isDeleteSuccess = this.bookService.delete(map);
		if (isDeleteSuccess) {
			mav.setViewName("redirect:/");
		} else {
			String bookId = map.get("bookdId").toString();
			mav.setViewName("redirect:/detail?bookdId=" + bookId);
		}
		return mav;
	}

}
