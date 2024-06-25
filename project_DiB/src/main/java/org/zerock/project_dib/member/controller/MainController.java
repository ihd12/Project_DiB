package org.zerock.project_dib.member.controller;

import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@Log4j2
public class MainController {

    @GetMapping("/")
    public String mainPage() {
        return "forward:/board/list";
    }

}
