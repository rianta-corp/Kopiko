package com.kopiko.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kopiko.entity.Comment;
import com.kopiko.service.ICommentService;

@Controller
public class CommentController {

	@Autowired
	private ICommentService commentService;

	@GetMapping("/comment")
	public String index(Model model) {
		model.addAttribute("comment", commentService.findAll());
		return "list";
	}

	@GetMapping("/comment/create")
	public String create(Model model) {
		model.addAttribute("comment", new Comment());
		return "form";
	}

	@GetMapping("/comment/{commentId}/insert")
	public String edit(@PathVariable Long commentId, Model model) {
		model.addAttribute("comment", commentService.findOne(commentId));
		return "form";
	}

	@PostMapping("/comment/save")
	public String save(@Validated Comment comment, BindingResult result, RedirectAttributes redirect) {
		if (result.hasErrors()) {
			return "form";
		}
		commentService.save(comment);
		redirect.addFlashAttribute("success", "Saved comment successfully!");
		return "redirect:/comment";
	}

	@GetMapping("/comment/{commentId}/delete")
	public String delete(@PathVariable Long id, RedirectAttributes redirect) {
		Comment comment = commentService.findOne(id);
		commentService.delete(comment);
		redirect.addFlashAttribute("success", "Deleted comment successfully!");
		return "redirect:/comment";
	}

	@GetMapping("/comment/search")
	public String search(@RequestParam("s") String s, Model model) {
		if (s.equals("")) {
			return "redirect:/comment";
		}

		model.addAttribute("comment", commentService.search(s));
		return "list";
	}

}
