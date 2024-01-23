output "all_user" {
    value = aws_iam_user.example
}

output "short_upper_names" {
    value =  [for name in var.user_names  : upper(name) if length(name) <  5]
        // 이름 대문자 변경 (5글자 이내) /참조 username
}

output "bios" {
    value =  [for name , role  in var.var.hero_hero_thousand_faces : "${name}is the ${role}" ]
        //map key value 값 출력  /참조 hero_thousand_faces
}


output "fordirective" {
  value = "%{for name in var.user_names }${name}\n%{ endfor }"
}