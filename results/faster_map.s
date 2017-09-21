	.file ""
	.section __TEXT,__literal16,16byte_literals
	.align	4
_caml_negf_mask:
	.quad	0x8000000000000000
	.quad	0
	.align	4
_caml_absf_mask:
	.quad	0x7fffffffffffffff
	.quad	-1
	.data
	.globl	_camlFaster_map__data_begin
_camlFaster_map__data_begin:
	.text
	.globl	_camlFaster_map__code_begin
_camlFaster_map__code_begin:
	nop
	.data
	.globl	_camlFaster_map__gc_roots
_camlFaster_map__gc_roots:
	.quad	0
	.text
	.align	4
	.globl	_camlFaster_map__plain_unrolled_map_5_13
_camlFaster_map__plain_unrolled_map_5_13:
	.cfi_startproc
	subq	$72, %rsp
	.cfi_adjust_cfa_offset 72
L121:
	movq	%rax, %rdi
	cmpq	$1, %rbx
	je	L116
	movq	8(%rbx), %rsi
	movq	(%rbx), %rax
	cmpq	$1, %rsi
	je	L117
	movq	%rdi, 48(%rsp)
	movq	8(%rsi), %rbx
	movq	(%rsi), %rsi
	movq	%rsi, 24(%rsp)
	cmpq	$1, %rbx
	je	L118
	movq	8(%rbx), %rsi
	movq	(%rbx), %rbx
	movq	%rbx, 32(%rsp)
	cmpq	$1, %rsi
	je	L119
	movq	8(%rsi), %rbx
	movq	(%rsi), %rsi
	movq	%rsi, 40(%rsp)
	cmpq	$1, %rbx
	je	L120
	movq	%rbx, (%rsp)
	movq	(%rdi), %rsi
	movq	%rdi, %rbx
	call	*%rsi
L110:
	movq	%rax, 64(%rsp)
	movq	48(%rsp), %rbx
	movq	(%rbx), %rdi
	movq	24(%rsp), %rax
	call	*%rdi
L111:
	movq	%rax, 56(%rsp)
	movq	48(%rsp), %rbx
	movq	(%rbx), %rdi
	movq	32(%rsp), %rax
	call	*%rdi
L112:
	movq	%rax, 24(%rsp)
	movq	48(%rsp), %rbx
	movq	(%rbx), %rdi
	movq	40(%rsp), %rax
	call	*%rdi
L113:
	movq	%rax, 16(%rsp)
	movq	(%rsp), %rax
	movq	(%rax), %rax
	movq	48(%rsp), %rbx
	movq	(%rbx), %rdi
	call	*%rdi
L114:
	movq	%rax, 8(%rsp)
	movq	(%rsp), %rax
	movq	8(%rax), %rbx
	movq	48(%rsp), %rax
	call	_camlFaster_map__plain_unrolled_map_5_13
L115:
	movq	%rax, %rbx
L122:
	subq	$120, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	L123
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	8(%rsp), %rdi
	movq	%rdi, (%rax)
	movq	%rbx, 8(%rax)
	leaq	24(%rax), %rbx
	movq	$2048, -8(%rbx)
	movq	16(%rsp), %rdi
	movq	%rdi, (%rbx)
	movq	%rax, 8(%rbx)
	leaq	48(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	24(%rsp), %rsi
	movq	%rsi, (%rdi)
	movq	%rbx, 8(%rdi)
	leaq	72(%rax), %rbx
	movq	$2048, -8(%rbx)
	movq	56(%rsp), %rsi
	movq	%rsi, (%rbx)
	movq	%rdi, 8(%rbx)
	addq	$96, %rax
	movq	$2048, -8(%rax)
	movq	64(%rsp), %rdi
	movq	%rdi, (%rax)
	movq	%rbx, 8(%rax)
	addq	$72, %rsp
	.cfi_adjust_cfa_offset -72
	ret
	.cfi_adjust_cfa_offset 72
	.align	2
L120:
	movq	(%rdi), %rsi
	movq	%rdi, %rbx
	call	*%rsi
L106:
	movq	%rax, 16(%rsp)
	movq	48(%rsp), %rbx
	movq	(%rbx), %rdi
	movq	24(%rsp), %rax
	call	*%rdi
L107:
	movq	%rax, 8(%rsp)
	movq	48(%rsp), %rbx
	movq	(%rbx), %rdi
	movq	32(%rsp), %rax
	call	*%rdi
L108:
	movq	%rax, (%rsp)
	movq	48(%rsp), %rbx
	movq	(%rbx), %rdi
	movq	40(%rsp), %rax
	call	*%rdi
L109:
	movq	%rax, %rbx
L125:
	subq	$96, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	L126
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	$1, 8(%rax)
	leaq	24(%rax), %rbx
	movq	$2048, -8(%rbx)
	movq	(%rsp), %rdi
	movq	%rdi, (%rbx)
	movq	%rax, 8(%rbx)
	leaq	48(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	8(%rsp), %rsi
	movq	%rsi, (%rdi)
	movq	%rbx, 8(%rdi)
	addq	$72, %rax
	movq	$2048, -8(%rax)
	movq	16(%rsp), %rbx
	movq	%rbx, (%rax)
	movq	%rdi, 8(%rax)
	addq	$72, %rsp
	.cfi_adjust_cfa_offset -72
	ret
	.cfi_adjust_cfa_offset 72
	.align	2
L119:
	movq	(%rdi), %rsi
	movq	%rdi, %rbx
	call	*%rsi
L103:
	movq	%rax, 8(%rsp)
	movq	48(%rsp), %rbx
	movq	(%rbx), %rdi
	movq	24(%rsp), %rax
	call	*%rdi
L104:
	movq	%rax, (%rsp)
	movq	48(%rsp), %rbx
	movq	(%rbx), %rdi
	movq	32(%rsp), %rax
	call	*%rdi
L105:
	movq	%rax, %rbx
L128:
	subq	$72, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	L129
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	$1, 8(%rax)
	leaq	24(%rax), %rbx
	movq	$2048, -8(%rbx)
	movq	(%rsp), %rdi
	movq	%rdi, (%rbx)
	movq	%rax, 8(%rbx)
	addq	$48, %rax
	movq	$2048, -8(%rax)
	movq	8(%rsp), %rdi
	movq	%rdi, (%rax)
	movq	%rbx, 8(%rax)
	addq	$72, %rsp
	.cfi_adjust_cfa_offset -72
	ret
	.cfi_adjust_cfa_offset 72
	.align	2
L118:
	movq	(%rdi), %rsi
	movq	%rdi, %rbx
	call	*%rsi
L101:
	movq	%rax, (%rsp)
	movq	48(%rsp), %rbx
	movq	(%rbx), %rdi
	movq	24(%rsp), %rax
	call	*%rdi
L102:
	movq	%rax, %rbx
L131:
	subq	$48, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	L132
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	$1, 8(%rax)
	leaq	24(%rax), %rbx
	movq	$2048, -8(%rbx)
	movq	(%rsp), %rdi
	movq	%rdi, (%rbx)
	movq	%rax, 8(%rbx)
	movq	%rbx, %rax
	addq	$72, %rsp
	.cfi_adjust_cfa_offset -72
	ret
	.cfi_adjust_cfa_offset 72
	.align	2
L117:
	movq	(%rdi), %rsi
	movq	%rdi, %rbx
	call	*%rsi
L100:
	movq	%rax, %rbx
L134:
	subq	$24, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	L135
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	$1, 8(%rax)
	addq	$72, %rsp
	.cfi_adjust_cfa_offset -72
	ret
	.cfi_adjust_cfa_offset 72
	.align	2
L116:
	movq	$1, %rax
	addq	$72, %rsp
	.cfi_adjust_cfa_offset -72
	ret
	.cfi_adjust_cfa_offset 72
L135:
	call	_caml_call_gc
L136:
	jmp	L134
L132:
	call	_caml_call_gc
L133:
	jmp	L131
L129:
	call	_caml_call_gc
L130:
	jmp	L128
L126:
	call	_caml_call_gc
L127:
	jmp	L125
L123:
	call	_caml_call_gc
L124:
	jmp	L122
	.cfi_adjust_cfa_offset -72
	.cfi_endproc
	.text
	.align	4
	.globl	_camlFaster_map__plain_unrolled_prefix_5_109
_camlFaster_map__plain_unrolled_prefix_5_109:
	.cfi_startproc
	subq	$56, %rsp
	.cfi_adjust_cfa_offset 56
L161:
	movq	%rax, %rdx
	cmpq	$1, %rsi
	je	L154
	movq	8(%rsi), %rcx
	movq	(%rsi), %rax
	cmpq	$1, %rcx
	je	L155
	movq	%rax, 40(%rsp)
	movq	%rdi, 32(%rsp)
	movq	8(%rcx), %rax
	movq	(%rcx), %rsi
	cmpq	$1, %rax
	je	L156
	movq	%rsi, 24(%rsp)
	movq	8(%rax), %rsi
	movq	(%rax), %rax
	cmpq	$1, %rsi
	je	L157
	movq	%rax, 16(%rsp)
	movq	8(%rsi), %rax
	movq	(%rsi), %rsi
	cmpq	$1, %rax
	je	L158
	movq	%rsi, 8(%rsp)
	movq	%rax, (%rsp)
	movq	8(%rax), %rsi
	cmpq	$1, %rbx
	jg	L160
	movq	%rdi, %rax
	movq	%rsi, %rbx
	movq	%rdx, %rdi
	call	_caml_apply2
L147:
	movq	%rax, 48(%rsp)
	jmp	L159
	.align	2
L160:
	addq	$-2, %rbx
	movq	%rdx, %rax
	call	_camlFaster_map__plain_unrolled_prefix_5_109
L148:
	movq	%rax, 48(%rsp)
L159:
	movq	(%rsp), %rax
	movq	(%rax), %rax
	movq	32(%rsp), %rbx
	movq	(%rbx), %rdi
	call	*%rdi
L149:
	movq	%rax, (%rsp)
	movq	32(%rsp), %rbx
	movq	(%rbx), %rdi
	movq	8(%rsp), %rax
	call	*%rdi
L150:
	movq	%rax, 8(%rsp)
	movq	32(%rsp), %rbx
	movq	(%rbx), %rdi
	movq	16(%rsp), %rax
	call	*%rdi
L151:
	movq	%rax, 16(%rsp)
	movq	32(%rsp), %rbx
	movq	(%rbx), %rdi
	movq	24(%rsp), %rax
	call	*%rdi
L152:
	movq	%rax, 24(%rsp)
	movq	32(%rsp), %rbx
	movq	(%rbx), %rdi
	movq	40(%rsp), %rax
	call	*%rdi
L153:
	movq	%rax, %rbx
L162:
	subq	$120, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	L163
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	(%rsp), %rdi
	movq	%rdi, (%rax)
	movq	48(%rsp), %rdi
	movq	%rdi, 8(%rax)
	leaq	24(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	8(%rsp), %rsi
	movq	%rsi, (%rdi)
	movq	%rax, 8(%rdi)
	leaq	48(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	16(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	leaq	72(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	24(%rsp), %rdx
	movq	%rdx, (%rdi)
	movq	%rsi, 8(%rdi)
	addq	$96, %rax
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	%rdi, 8(%rax)
	addq	$56, %rsp
	.cfi_adjust_cfa_offset -56
	ret
	.cfi_adjust_cfa_offset 56
	.align	2
L158:
	movq	(%rdi), %rdx
	movq	%rsi, %rax
	movq	%rdi, %rbx
	call	*%rdx
L143:
	movq	%rax, (%rsp)
	movq	32(%rsp), %rbx
	movq	(%rbx), %rdi
	movq	16(%rsp), %rax
	call	*%rdi
L144:
	movq	%rax, 8(%rsp)
	movq	32(%rsp), %rbx
	movq	(%rbx), %rdi
	movq	24(%rsp), %rax
	call	*%rdi
L145:
	movq	%rax, 16(%rsp)
	movq	32(%rsp), %rbx
	movq	(%rbx), %rdi
	movq	40(%rsp), %rax
	call	*%rdi
L146:
	movq	%rax, %rbx
L165:
	subq	$96, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	L166
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	(%rsp), %rdi
	movq	%rdi, (%rax)
	movq	$1, 8(%rax)
	leaq	24(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	8(%rsp), %rsi
	movq	%rsi, (%rdi)
	movq	%rax, 8(%rdi)
	leaq	48(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	16(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	addq	$72, %rax
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	%rsi, 8(%rax)
	addq	$56, %rsp
	.cfi_adjust_cfa_offset -56
	ret
	.cfi_adjust_cfa_offset 56
	.align	2
L157:
	movq	(%rdi), %rsi
	movq	%rdi, %rbx
	call	*%rsi
L140:
	movq	%rax, (%rsp)
	movq	32(%rsp), %rbx
	movq	(%rbx), %rdi
	movq	24(%rsp), %rax
	call	*%rdi
L141:
	movq	%rax, 8(%rsp)
	movq	32(%rsp), %rbx
	movq	(%rbx), %rdi
	movq	40(%rsp), %rax
	call	*%rdi
L142:
	movq	%rax, %rbx
L168:
	subq	$72, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	L169
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	(%rsp), %rdi
	movq	%rdi, (%rax)
	movq	$1, 8(%rax)
	leaq	24(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	8(%rsp), %rsi
	movq	%rsi, (%rdi)
	movq	%rax, 8(%rdi)
	addq	$48, %rax
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	%rdi, 8(%rax)
	addq	$56, %rsp
	.cfi_adjust_cfa_offset -56
	ret
	.cfi_adjust_cfa_offset 56
	.align	2
L156:
	movq	(%rdi), %rdx
	movq	%rsi, %rax
	movq	%rdi, %rbx
	call	*%rdx
L138:
	movq	%rax, (%rsp)
	movq	32(%rsp), %rbx
	movq	(%rbx), %rdi
	movq	40(%rsp), %rax
	call	*%rdi
L139:
	movq	%rax, %rbx
L171:
	subq	$48, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	L172
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	(%rsp), %rdi
	movq	%rdi, (%rax)
	movq	$1, 8(%rax)
	leaq	24(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	%rbx, (%rdi)
	movq	%rax, 8(%rdi)
	movq	%rdi, %rax
	addq	$56, %rsp
	.cfi_adjust_cfa_offset -56
	ret
	.cfi_adjust_cfa_offset 56
	.align	2
L155:
	movq	(%rdi), %rsi
	movq	%rdi, %rbx
	call	*%rsi
L137:
	movq	%rax, %rbx
L174:
	subq	$24, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	L175
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	$1, 8(%rax)
	addq	$56, %rsp
	.cfi_adjust_cfa_offset -56
	ret
	.cfi_adjust_cfa_offset 56
	.align	2
L154:
	movq	$1, %rax
	addq	$56, %rsp
	.cfi_adjust_cfa_offset -56
	ret
	.cfi_adjust_cfa_offset 56
L175:
	call	_caml_call_gc
L176:
	jmp	L174
L172:
	call	_caml_call_gc
L173:
	jmp	L171
L169:
	call	_caml_call_gc
L170:
	jmp	L168
L166:
	call	_caml_call_gc
L167:
	jmp	L165
L163:
	call	_caml_call_gc
L164:
	jmp	L162
	.cfi_adjust_cfa_offset -56
	.cfi_endproc
	.text
	.align	4
	.globl	_camlFaster_map__chunked_tail_recursive_map_12_216
_camlFaster_map__chunked_tail_recursive_map_12_216:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_adjust_cfa_offset 24
L181:
	movq	%rax, %rdi
L182:
	subq	$112, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	L183
	leaq	8(%r15), %rax
	movq	%rax, (%rsp)
	movq	$3319, -8(%rax)
	movq	_camlFaster_map__map_head_chunk_266@GOTPCREL(%rip), %rsi
	movq	%rsi, (%rax)
	movq	$3, 8(%rax)
	movq	%rdi, 16(%rax)
	leaq	32(%rax), %rsi
	movq	$4343, -8(%rsi)
	movq	_caml_curry2@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rsi)
	movq	$5, 8(%rsi)
	movq	_camlFaster_map__map_tail_chunk_666@GOTPCREL(%rip), %rcx
	movq	%rcx, 16(%rsi)
	movq	%rdi, 24(%rsi)
	addq	$72, %rax
	movq	%rax, 16(%rsp)
	movq	$4343, -8(%rax)
	movq	%rdx, (%rax)
	movq	$5, 8(%rax)
	movq	_camlFaster_map__map_all_tail_chunks_787@GOTPCREL(%rip), %rdi
	movq	%rdi, 16(%rax)
	movq	%rsi, 24(%rax)
	movq	$1, %rax
	call	_camlFaster_map__split_221
L177:
	cmpq	$1, %rax
	je	L180
	movq	8(%rax), %rbx
	movq	%rbx, 8(%rsp)
	movq	(%rax), %rax
	movq	(%rsp), %rbx
	call	_camlFaster_map__map_head_chunk_266
L178:
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rdi
	addq	$24, %rsp
	.cfi_adjust_cfa_offset -24
	jmp	_camlFaster_map__map_all_tail_chunks_787
	.cfi_adjust_cfa_offset 24
	.align	2
L180:
	movq	$1, %rax
	addq	$24, %rsp
	.cfi_adjust_cfa_offset -24
	ret
	.cfi_adjust_cfa_offset 24
L183:
	call	_caml_call_gc
L184:
	jmp	L182
	.cfi_adjust_cfa_offset -24
	.cfi_endproc
	.text
	.align	4
	.globl	_camlFaster_map__split_221
_camlFaster_map__split_221:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
L187:
	movq	%rax, %rdi
	cmpq	$1, %rbx
	je	L186
	movq	8(%rbx), %rax
	cmpq	$1, %rax
	je	L186
	movq	8(%rax), %rax
	cmpq	$1, %rax
	je	L186
	movq	8(%rax), %rax
	cmpq	$1, %rax
	je	L186
	movq	8(%rax), %rax
	cmpq	$1, %rax
	je	L186
	movq	8(%rax), %rax
	cmpq	$1, %rax
	je	L186
	movq	8(%rax), %rax
	cmpq	$1, %rax
	je	L186
	movq	8(%rax), %rax
	cmpq	$1, %rax
	je	L186
	movq	8(%rax), %rax
	cmpq	$1, %rax
	je	L186
	movq	8(%rax), %rax
	cmpq	$1, %rax
	je	L186
	movq	8(%rax), %rax
	cmpq	$1, %rax
	je	L186
	movq	8(%rax), %rax
	cmpq	$1, %rax
	je	L186
	movq	8(%rax), %rsi
L188:
	subq	$24, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	L189
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	%rdi, 8(%rax)
	movq	%rsi, %rbx
	jmp	L187
	.align	2
L186:
L191:
	subq	$24, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	L192
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	%rdi, 8(%rax)
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	ret
	.cfi_adjust_cfa_offset 8
L192:
	call	_caml_call_gc
L193:
	jmp	L191
L189:
	call	_caml_call_gc
L190:
	jmp	L188
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.text
	.align	4
	.globl	_camlFaster_map__map_head_chunk_266
_camlFaster_map__map_head_chunk_266:
	.cfi_startproc
	subq	$104, %rsp
	.cfi_adjust_cfa_offset 104
L285:
	cmpq	$1, %rax
	je	L272
	movq	8(%rax), %rdi
	movq	(%rax), %rax
	cmpq	$1, %rdi
	je	L273
	movq	%rbx, 88(%rsp)
	movq	8(%rdi), %rsi
	movq	(%rdi), %rdi
	cmpq	$1, %rsi
	je	L274
	movq	8(%rsi), %rdx
	movq	(%rsi), %rsi
	cmpq	$1, %rdx
	je	L275
	movq	8(%rdx), %rcx
	movq	(%rdx), %rbp
	cmpq	$1, %rcx
	je	L276
	movq	8(%rcx), %rdx
	movq	(%rcx), %r11
	cmpq	$1, %rdx
	je	L277
	movq	8(%rdx), %rcx
	movq	(%rdx), %r10
	cmpq	$1, %rcx
	je	L278
	movq	8(%rcx), %rdx
	movq	(%rcx), %r13
	cmpq	$1, %rdx
	je	L279
	movq	8(%rdx), %rcx
	movq	(%rdx), %r12
	cmpq	$1, %rcx
	je	L280
	movq	8(%rcx), %r8
	movq	(%rcx), %r9
	cmpq	$1, %r8
	je	L281
	movq	8(%r8), %rdx
	movq	(%r8), %rcx
	cmpq	$1, %rdx
	je	L282
	movq	8(%rdx), %r8
	movq	(%rdx), %rdx
	cmpq	$1, %r8
	je	L283
	movq	8(%r8), %rbx
	cmpq	$1, %rbx
	je	L284
	movq	_camlFaster_map__Pmakeblock_830@GOTPCREL(%rip), %rax
	movq	%r14, %rsp
	popq	%r14
	ret
	.align	2
L284:
	movq	%rdx, (%rsp)
	movq	%rcx, 16(%rsp)
	movq	%r9, 24(%rsp)
	movq	%r12, 32(%rsp)
	movq	%r13, 40(%rsp)
	movq	%r10, 48(%rsp)
	movq	%r11, 56(%rsp)
	movq	%rbp, 64(%rsp)
	movq	%rsi, 72(%rsp)
	movq	%rdi, 80(%rsp)
	movq	%rax, 96(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%r8), %rax
	movq	(%rbx), %rdi
	call	*%rdi
L260:
	movq	%rax, 8(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	(%rsp), %rax
	call	*%rdi
L261:
	movq	%rax, (%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	16(%rsp), %rax
	call	*%rdi
L262:
	movq	%rax, 16(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	24(%rsp), %rax
	call	*%rdi
L263:
	movq	%rax, 24(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	32(%rsp), %rax
	call	*%rdi
L264:
	movq	%rax, 32(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	40(%rsp), %rax
	call	*%rdi
L265:
	movq	%rax, 40(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	48(%rsp), %rax
	call	*%rdi
L266:
	movq	%rax, 48(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	56(%rsp), %rax
	call	*%rdi
L267:
	movq	%rax, 56(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	64(%rsp), %rax
	call	*%rdi
L268:
	movq	%rax, 64(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	72(%rsp), %rax
	call	*%rdi
L269:
	movq	%rax, 72(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	80(%rsp), %rax
	call	*%rdi
L270:
	movq	%rax, 80(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	96(%rsp), %rax
	call	*%rdi
L271:
	movq	%rax, %rbx
L286:
	subq	$288, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	L287
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	8(%rsp), %rdi
	movq	%rdi, (%rax)
	movq	$1, 8(%rax)
	leaq	24(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	(%rsp), %rsi
	movq	%rsi, (%rdi)
	movq	%rax, 8(%rdi)
	leaq	48(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	16(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	leaq	72(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	24(%rsp), %rdx
	movq	%rdx, (%rdi)
	movq	%rsi, 8(%rdi)
	leaq	96(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	32(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	leaq	120(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	40(%rsp), %rdx
	movq	%rdx, (%rdi)
	movq	%rsi, 8(%rdi)
	leaq	144(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	48(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	leaq	168(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	56(%rsp), %rdx
	movq	%rdx, (%rdi)
	movq	%rsi, 8(%rdi)
	leaq	192(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	64(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	leaq	216(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	72(%rsp), %rdx
	movq	%rdx, (%rdi)
	movq	%rsi, 8(%rdi)
	leaq	240(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	80(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	addq	$264, %rax
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	%rsi, 8(%rax)
	addq	$104, %rsp
	.cfi_adjust_cfa_offset -104
	ret
	.cfi_adjust_cfa_offset 104
	.align	2
L283:
	movq	%rcx, 16(%rsp)
	movq	%r9, 24(%rsp)
	movq	%r12, 32(%rsp)
	movq	%r13, 40(%rsp)
	movq	%r10, 48(%rsp)
	movq	%r11, 56(%rsp)
	movq	%rbp, 64(%rsp)
	movq	%rsi, 72(%rsp)
	movq	%rdi, 80(%rsp)
	movq	%rax, 96(%rsp)
	movq	16(%rbx), %rax
	movq	%rax, (%rsp)
	movq	(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	%rdx, %rax
	movq	(%rsp), %rbx
	movq	8(%rsp), %rdi
	call	*%rdi
L249:
	movq	%rax, (%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	16(%rsp), %rax
	call	*%rdi
L250:
	movq	%rax, 8(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	24(%rsp), %rax
	call	*%rdi
L251:
	movq	%rax, 16(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	32(%rsp), %rax
	call	*%rdi
L252:
	movq	%rax, 24(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	40(%rsp), %rax
	call	*%rdi
L253:
	movq	%rax, 32(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	48(%rsp), %rax
	call	*%rdi
L254:
	movq	%rax, 40(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	56(%rsp), %rax
	call	*%rdi
L255:
	movq	%rax, 48(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	64(%rsp), %rax
	call	*%rdi
L256:
	movq	%rax, 56(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	72(%rsp), %rax
	call	*%rdi
L257:
	movq	%rax, 64(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	80(%rsp), %rax
	call	*%rdi
L258:
	movq	%rax, 72(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	96(%rsp), %rax
	call	*%rdi
L259:
	movq	%rax, %rbx
L289:
	subq	$264, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	L290
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	(%rsp), %rdi
	movq	%rdi, (%rax)
	movq	$1, 8(%rax)
	leaq	24(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	8(%rsp), %rsi
	movq	%rsi, (%rdi)
	movq	%rax, 8(%rdi)
	leaq	48(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	16(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	leaq	72(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	24(%rsp), %rdx
	movq	%rdx, (%rdi)
	movq	%rsi, 8(%rdi)
	leaq	96(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	32(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	leaq	120(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	40(%rsp), %rdx
	movq	%rdx, (%rdi)
	movq	%rsi, 8(%rdi)
	leaq	144(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	48(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	leaq	168(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	56(%rsp), %rdx
	movq	%rdx, (%rdi)
	movq	%rsi, 8(%rdi)
	leaq	192(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	64(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	leaq	216(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	72(%rsp), %rdx
	movq	%rdx, (%rdi)
	movq	%rsi, 8(%rdi)
	addq	$240, %rax
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	%rdi, 8(%rax)
	addq	$104, %rsp
	.cfi_adjust_cfa_offset -104
	ret
	.cfi_adjust_cfa_offset 104
	.align	2
L282:
	movq	%r9, 24(%rsp)
	movq	%r12, 32(%rsp)
	movq	%r13, 40(%rsp)
	movq	%r10, 48(%rsp)
	movq	%r11, 56(%rsp)
	movq	%rbp, 64(%rsp)
	movq	%rsi, 72(%rsp)
	movq	%rdi, 80(%rsp)
	movq	%rax, 96(%rsp)
	movq	16(%rbx), %rbx
	movq	(%rbx), %rdi
	movq	%rcx, %rax
	call	*%rdi
L239:
	movq	%rax, (%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	24(%rsp), %rax
	call	*%rdi
L240:
	movq	%rax, 8(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	32(%rsp), %rax
	call	*%rdi
L241:
	movq	%rax, 16(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	40(%rsp), %rax
	call	*%rdi
L242:
	movq	%rax, 24(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	48(%rsp), %rax
	call	*%rdi
L243:
	movq	%rax, 32(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	56(%rsp), %rax
	call	*%rdi
L244:
	movq	%rax, 40(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	64(%rsp), %rax
	call	*%rdi
L245:
	movq	%rax, 48(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	72(%rsp), %rax
	call	*%rdi
L246:
	movq	%rax, 56(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	80(%rsp), %rax
	call	*%rdi
L247:
	movq	%rax, 64(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	96(%rsp), %rax
	call	*%rdi
L248:
	movq	%rax, %rbx
L292:
	subq	$240, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	L293
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	(%rsp), %rdi
	movq	%rdi, (%rax)
	movq	$1, 8(%rax)
	leaq	24(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	8(%rsp), %rsi
	movq	%rsi, (%rdi)
	movq	%rax, 8(%rdi)
	leaq	48(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	16(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	leaq	72(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	24(%rsp), %rdx
	movq	%rdx, (%rdi)
	movq	%rsi, 8(%rdi)
	leaq	96(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	32(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	leaq	120(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	40(%rsp), %rdx
	movq	%rdx, (%rdi)
	movq	%rsi, 8(%rdi)
	leaq	144(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	48(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	leaq	168(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	56(%rsp), %rdx
	movq	%rdx, (%rdi)
	movq	%rsi, 8(%rdi)
	leaq	192(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	64(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	addq	$216, %rax
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	%rsi, 8(%rax)
	addq	$104, %rsp
	.cfi_adjust_cfa_offset -104
	ret
	.cfi_adjust_cfa_offset 104
	.align	2
L281:
	movq	%r12, 32(%rsp)
	movq	%r13, 40(%rsp)
	movq	%r10, 48(%rsp)
	movq	%r11, 56(%rsp)
	movq	%rbp, 64(%rsp)
	movq	%rsi, 72(%rsp)
	movq	%rdi, 80(%rsp)
	movq	%rax, 96(%rsp)
	movq	16(%rbx), %rbx
	movq	(%rbx), %rdi
	movq	%r9, %rax
	call	*%rdi
L230:
	movq	%rax, (%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	32(%rsp), %rax
	call	*%rdi
L231:
	movq	%rax, 8(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	40(%rsp), %rax
	call	*%rdi
L232:
	movq	%rax, 16(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	48(%rsp), %rax
	call	*%rdi
L233:
	movq	%rax, 24(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	56(%rsp), %rax
	call	*%rdi
L234:
	movq	%rax, 32(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	64(%rsp), %rax
	call	*%rdi
L235:
	movq	%rax, 40(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	72(%rsp), %rax
	call	*%rdi
L236:
	movq	%rax, 48(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	80(%rsp), %rax
	call	*%rdi
L237:
	movq	%rax, 56(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	96(%rsp), %rax
	call	*%rdi
L238:
	movq	%rax, %rbx
L295:
	subq	$216, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	L296
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	(%rsp), %rdi
	movq	%rdi, (%rax)
	movq	$1, 8(%rax)
	leaq	24(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	8(%rsp), %rsi
	movq	%rsi, (%rdi)
	movq	%rax, 8(%rdi)
	leaq	48(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	16(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	leaq	72(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	24(%rsp), %rdx
	movq	%rdx, (%rdi)
	movq	%rsi, 8(%rdi)
	leaq	96(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	32(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	leaq	120(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	40(%rsp), %rdx
	movq	%rdx, (%rdi)
	movq	%rsi, 8(%rdi)
	leaq	144(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	48(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	leaq	168(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	56(%rsp), %rdx
	movq	%rdx, (%rdi)
	movq	%rsi, 8(%rdi)
	addq	$192, %rax
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	%rdi, 8(%rax)
	addq	$104, %rsp
	.cfi_adjust_cfa_offset -104
	ret
	.cfi_adjust_cfa_offset 104
	.align	2
L280:
	movq	%r13, 40(%rsp)
	movq	%r10, 48(%rsp)
	movq	%r11, 56(%rsp)
	movq	%rbp, 64(%rsp)
	movq	%rsi, 72(%rsp)
	movq	%rdi, 80(%rsp)
	movq	%rax, 96(%rsp)
	movq	16(%rbx), %rbx
	movq	(%rbx), %rdi
	movq	%r12, %rax
	call	*%rdi
L222:
	movq	%rax, (%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	40(%rsp), %rax
	call	*%rdi
L223:
	movq	%rax, 8(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	48(%rsp), %rax
	call	*%rdi
L224:
	movq	%rax, 16(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	56(%rsp), %rax
	call	*%rdi
L225:
	movq	%rax, 24(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	64(%rsp), %rax
	call	*%rdi
L226:
	movq	%rax, 32(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	72(%rsp), %rax
	call	*%rdi
L227:
	movq	%rax, 40(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	80(%rsp), %rax
	call	*%rdi
L228:
	movq	%rax, 48(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	96(%rsp), %rax
	call	*%rdi
L229:
	movq	%rax, %rbx
L298:
	subq	$192, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	L299
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	(%rsp), %rdi
	movq	%rdi, (%rax)
	movq	$1, 8(%rax)
	leaq	24(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	8(%rsp), %rsi
	movq	%rsi, (%rdi)
	movq	%rax, 8(%rdi)
	leaq	48(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	16(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	leaq	72(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	24(%rsp), %rdx
	movq	%rdx, (%rdi)
	movq	%rsi, 8(%rdi)
	leaq	96(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	32(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	leaq	120(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	40(%rsp), %rdx
	movq	%rdx, (%rdi)
	movq	%rsi, 8(%rdi)
	leaq	144(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	48(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	addq	$168, %rax
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	%rsi, 8(%rax)
	addq	$104, %rsp
	.cfi_adjust_cfa_offset -104
	ret
	.cfi_adjust_cfa_offset 104
	.align	2
L279:
	movq	%r10, 48(%rsp)
	movq	%r11, 56(%rsp)
	movq	%rbp, 64(%rsp)
	movq	%rsi, 72(%rsp)
	movq	%rdi, 80(%rsp)
	movq	%rax, 96(%rsp)
	movq	16(%rbx), %rbx
	movq	(%rbx), %rdi
	movq	%r13, %rax
	call	*%rdi
L215:
	movq	%rax, (%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	48(%rsp), %rax
	call	*%rdi
L216:
	movq	%rax, 8(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	56(%rsp), %rax
	call	*%rdi
L217:
	movq	%rax, 16(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	64(%rsp), %rax
	call	*%rdi
L218:
	movq	%rax, 24(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	72(%rsp), %rax
	call	*%rdi
L219:
	movq	%rax, 32(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	80(%rsp), %rax
	call	*%rdi
L220:
	movq	%rax, 40(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	96(%rsp), %rax
	call	*%rdi
L221:
	movq	%rax, %rbx
L301:
	subq	$168, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	L302
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	(%rsp), %rdi
	movq	%rdi, (%rax)
	movq	$1, 8(%rax)
	leaq	24(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	8(%rsp), %rsi
	movq	%rsi, (%rdi)
	movq	%rax, 8(%rdi)
	leaq	48(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	16(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	leaq	72(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	24(%rsp), %rdx
	movq	%rdx, (%rdi)
	movq	%rsi, 8(%rdi)
	leaq	96(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	32(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	leaq	120(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	40(%rsp), %rdx
	movq	%rdx, (%rdi)
	movq	%rsi, 8(%rdi)
	addq	$144, %rax
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	%rdi, 8(%rax)
	addq	$104, %rsp
	.cfi_adjust_cfa_offset -104
	ret
	.cfi_adjust_cfa_offset 104
	.align	2
L278:
	movq	%r11, 56(%rsp)
	movq	%rbp, 64(%rsp)
	movq	%rsi, 72(%rsp)
	movq	%rdi, 80(%rsp)
	movq	%rax, 96(%rsp)
	movq	16(%rbx), %rbx
	movq	(%rbx), %rdi
	movq	%r10, %rax
	call	*%rdi
L209:
	movq	%rax, (%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	56(%rsp), %rax
	call	*%rdi
L210:
	movq	%rax, 8(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	64(%rsp), %rax
	call	*%rdi
L211:
	movq	%rax, 16(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	72(%rsp), %rax
	call	*%rdi
L212:
	movq	%rax, 24(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	80(%rsp), %rax
	call	*%rdi
L213:
	movq	%rax, 32(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	96(%rsp), %rax
	call	*%rdi
L214:
	movq	%rax, %rbx
L304:
	subq	$144, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	L305
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	(%rsp), %rdi
	movq	%rdi, (%rax)
	movq	$1, 8(%rax)
	leaq	24(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	8(%rsp), %rsi
	movq	%rsi, (%rdi)
	movq	%rax, 8(%rdi)
	leaq	48(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	16(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	leaq	72(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	24(%rsp), %rdx
	movq	%rdx, (%rdi)
	movq	%rsi, 8(%rdi)
	leaq	96(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	32(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	addq	$120, %rax
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	%rsi, 8(%rax)
	addq	$104, %rsp
	.cfi_adjust_cfa_offset -104
	ret
	.cfi_adjust_cfa_offset 104
	.align	2
L277:
	movq	%rbp, 64(%rsp)
	movq	%rsi, 72(%rsp)
	movq	%rdi, 80(%rsp)
	movq	%rax, 96(%rsp)
	movq	16(%rbx), %rbx
	movq	(%rbx), %rdi
	movq	%r11, %rax
	call	*%rdi
L204:
	movq	%rax, (%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	64(%rsp), %rax
	call	*%rdi
L205:
	movq	%rax, 8(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	72(%rsp), %rax
	call	*%rdi
L206:
	movq	%rax, 16(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	80(%rsp), %rax
	call	*%rdi
L207:
	movq	%rax, 24(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	96(%rsp), %rax
	call	*%rdi
L208:
	movq	%rax, %rbx
L307:
	subq	$120, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	L308
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	(%rsp), %rdi
	movq	%rdi, (%rax)
	movq	$1, 8(%rax)
	leaq	24(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	8(%rsp), %rsi
	movq	%rsi, (%rdi)
	movq	%rax, 8(%rdi)
	leaq	48(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	16(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	leaq	72(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	24(%rsp), %rdx
	movq	%rdx, (%rdi)
	movq	%rsi, 8(%rdi)
	addq	$96, %rax
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	%rdi, 8(%rax)
	addq	$104, %rsp
	.cfi_adjust_cfa_offset -104
	ret
	.cfi_adjust_cfa_offset 104
	.align	2
L276:
	movq	%rsi, 72(%rsp)
	movq	%rdi, 80(%rsp)
	movq	%rax, 96(%rsp)
	movq	16(%rbx), %rbx
	movq	(%rbx), %rdi
	movq	%rbp, %rax
	call	*%rdi
L200:
	movq	%rax, (%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	72(%rsp), %rax
	call	*%rdi
L201:
	movq	%rax, 8(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	80(%rsp), %rax
	call	*%rdi
L202:
	movq	%rax, 16(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	96(%rsp), %rax
	call	*%rdi
L203:
	movq	%rax, %rbx
L310:
	subq	$96, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	L311
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	(%rsp), %rdi
	movq	%rdi, (%rax)
	movq	$1, 8(%rax)
	leaq	24(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	8(%rsp), %rsi
	movq	%rsi, (%rdi)
	movq	%rax, 8(%rdi)
	leaq	48(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	16(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	addq	$72, %rax
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	%rsi, 8(%rax)
	addq	$104, %rsp
	.cfi_adjust_cfa_offset -104
	ret
	.cfi_adjust_cfa_offset 104
	.align	2
L275:
	movq	%rdi, 80(%rsp)
	movq	%rax, 96(%rsp)
	movq	16(%rbx), %rbx
	movq	(%rbx), %rdi
	movq	%rsi, %rax
	call	*%rdi
L197:
	movq	%rax, (%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	80(%rsp), %rax
	call	*%rdi
L198:
	movq	%rax, 8(%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	96(%rsp), %rax
	call	*%rdi
L199:
	movq	%rax, %rbx
L313:
	subq	$72, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	L314
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	(%rsp), %rdi
	movq	%rdi, (%rax)
	movq	$1, 8(%rax)
	leaq	24(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	8(%rsp), %rsi
	movq	%rsi, (%rdi)
	movq	%rax, 8(%rdi)
	addq	$48, %rax
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	%rdi, 8(%rax)
	addq	$104, %rsp
	.cfi_adjust_cfa_offset -104
	ret
	.cfi_adjust_cfa_offset 104
	.align	2
L274:
	movq	%rax, 96(%rsp)
	movq	16(%rbx), %rbx
	movq	(%rbx), %rsi
	movq	%rdi, %rax
	call	*%rsi
L195:
	movq	%rax, (%rsp)
	movq	88(%rsp), %rax
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	96(%rsp), %rax
	call	*%rdi
L196:
	movq	%rax, %rbx
L316:
	subq	$48, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	L317
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	(%rsp), %rdi
	movq	%rdi, (%rax)
	movq	$1, 8(%rax)
	leaq	24(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	%rbx, (%rdi)
	movq	%rax, 8(%rdi)
	movq	%rdi, %rax
	addq	$104, %rsp
	.cfi_adjust_cfa_offset -104
	ret
	.cfi_adjust_cfa_offset 104
	.align	2
L273:
	movq	16(%rbx), %rbx
	movq	(%rbx), %rdi
	call	*%rdi
L194:
	movq	%rax, %rbx
L319:
	subq	$24, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	L320
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	$1, 8(%rax)
	addq	$104, %rsp
	.cfi_adjust_cfa_offset -104
	ret
	.cfi_adjust_cfa_offset 104
	.align	2
L272:
	movq	$1, %rax
	addq	$104, %rsp
	.cfi_adjust_cfa_offset -104
	ret
	.cfi_adjust_cfa_offset 104
L320:
	call	_caml_call_gc
L321:
	jmp	L319
L317:
	call	_caml_call_gc
L318:
	jmp	L316
L314:
	call	_caml_call_gc
L315:
	jmp	L313
L311:
	call	_caml_call_gc
L312:
	jmp	L310
L308:
	call	_caml_call_gc
L309:
	jmp	L307
L305:
	call	_caml_call_gc
L306:
	jmp	L304
L302:
	call	_caml_call_gc
L303:
	jmp	L301
L299:
	call	_caml_call_gc
L300:
	jmp	L298
L296:
	call	_caml_call_gc
L297:
	jmp	L295
L293:
	call	_caml_call_gc
L294:
	jmp	L292
L290:
	call	_caml_call_gc
L291:
	jmp	L289
L287:
	call	_caml_call_gc
L288:
	jmp	L286
	.cfi_adjust_cfa_offset -104
	.cfi_endproc
	.text
	.align	4
	.globl	_camlFaster_map__map_tail_chunk_666
_camlFaster_map__map_tail_chunk_666:
	.cfi_startproc
	subq	$120, %rsp
	.cfi_adjust_cfa_offset 120
L335:
	cmpq	$1, %rbx
	je	L334
	movq	8(%rbx), %rsi
	cmpq	$1, %rsi
	je	L334
	movq	8(%rsi), %rdx
	cmpq	$1, %rdx
	je	L334
	movq	8(%rdx), %rcx
	cmpq	$1, %rcx
	je	L334
	movq	8(%rcx), %r8
	cmpq	$1, %r8
	je	L334
	movq	8(%r8), %r9
	cmpq	$1, %r9
	je	L334
	movq	8(%r9), %r12
	cmpq	$1, %r12
	je	L334
	movq	8(%r12), %r13
	cmpq	$1, %r13
	je	L334
	movq	8(%r13), %r10
	cmpq	$1, %r10
	je	L334
	movq	8(%r10), %r11
	cmpq	$1, %r11
	je	L334
	movq	8(%r11), %rbp
	cmpq	$1, %rbp
	je	L334
	movq	%rax, 104(%rsp)
	movq	8(%rbp), %rax
	cmpq	$1, %rax
	je	L334
	movq	%rbp, (%rsp)
	movq	%r11, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	%r13, 24(%rsp)
	movq	%r12, 32(%rsp)
	movq	%r9, 40(%rsp)
	movq	%r8, 48(%rsp)
	movq	%rcx, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rsi, 72(%rsp)
	movq	%rdi, 80(%rsp)
	movq	%rbx, 88(%rsp)
	movq	24(%rdi), %rbx
	movq	(%rax), %rax
	movq	(%rbx), %rdi
	call	*%rdi
L322:
	movq	%rax, 96(%rsp)
	movq	80(%rsp), %rax
	movq	24(%rax), %rbx
	movq	(%rsp), %rax
	movq	(%rax), %rax
	movq	(%rbx), %rdi
	call	*%rdi
L323:
	movq	%rax, (%rsp)
	movq	80(%rsp), %rax
	movq	24(%rax), %rbx
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	movq	(%rbx), %rdi
	call	*%rdi
L324:
	movq	%rax, 8(%rsp)
	movq	80(%rsp), %rax
	movq	24(%rax), %rbx
	movq	16(%rsp), %rax
	movq	(%rax), %rax
	movq	(%rbx), %rdi
	call	*%rdi
L325:
	movq	%rax, 16(%rsp)
	movq	80(%rsp), %rax
	movq	24(%rax), %rbx
	movq	24(%rsp), %rax
	movq	(%rax), %rax
	movq	(%rbx), %rdi
	call	*%rdi
L326:
	movq	%rax, 24(%rsp)
	movq	80(%rsp), %rax
	movq	24(%rax), %rbx
	movq	32(%rsp), %rax
	movq	(%rax), %rax
	movq	(%rbx), %rdi
	call	*%rdi
L327:
	movq	%rax, 32(%rsp)
	movq	80(%rsp), %rax
	movq	24(%rax), %rbx
	movq	40(%rsp), %rax
	movq	(%rax), %rax
	movq	(%rbx), %rdi
	call	*%rdi
L328:
	movq	%rax, 40(%rsp)
	movq	80(%rsp), %rax
	movq	24(%rax), %rbx
	movq	48(%rsp), %rax
	movq	(%rax), %rax
	movq	(%rbx), %rdi
	call	*%rdi
L329:
	movq	%rax, 48(%rsp)
	movq	80(%rsp), %rax
	movq	24(%rax), %rbx
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	movq	(%rbx), %rdi
	call	*%rdi
L330:
	movq	%rax, 56(%rsp)
	movq	80(%rsp), %rax
	movq	24(%rax), %rbx
	movq	64(%rsp), %rax
	movq	(%rax), %rax
	movq	(%rbx), %rdi
	call	*%rdi
L331:
	movq	%rax, 64(%rsp)
	movq	80(%rsp), %rax
	movq	24(%rax), %rbx
	movq	72(%rsp), %rax
	movq	(%rax), %rax
	movq	(%rbx), %rdi
	call	*%rdi
L332:
	movq	%rax, 72(%rsp)
	movq	80(%rsp), %rax
	movq	24(%rax), %rbx
	movq	88(%rsp), %rax
	movq	(%rax), %rax
	movq	(%rbx), %rdi
	call	*%rdi
L333:
	movq	%rax, %rbx
L336:
	subq	$288, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	L337
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	96(%rsp), %rdi
	movq	%rdi, (%rax)
	movq	104(%rsp), %rdi
	movq	%rdi, 8(%rax)
	leaq	24(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	(%rsp), %rsi
	movq	%rsi, (%rdi)
	movq	%rax, 8(%rdi)
	leaq	48(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	8(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	leaq	72(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	16(%rsp), %rdx
	movq	%rdx, (%rdi)
	movq	%rsi, 8(%rdi)
	leaq	96(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	24(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	leaq	120(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	32(%rsp), %rdx
	movq	%rdx, (%rdi)
	movq	%rsi, 8(%rdi)
	leaq	144(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	40(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	leaq	168(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	48(%rsp), %rdx
	movq	%rdx, (%rdi)
	movq	%rsi, 8(%rdi)
	leaq	192(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	56(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	leaq	216(%rax), %rdi
	movq	$2048, -8(%rdi)
	movq	64(%rsp), %rdx
	movq	%rdx, (%rdi)
	movq	%rsi, 8(%rdi)
	leaq	240(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	72(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	addq	$264, %rax
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	%rsi, 8(%rax)
	addq	$120, %rsp
	.cfi_adjust_cfa_offset -120
	ret
	.cfi_adjust_cfa_offset 120
	.align	2
L334:
	movq	_camlFaster_map__Pmakeblock_831@GOTPCREL(%rip), %rax
	movq	%r14, %rsp
	popq	%r14
	ret
L337:
	call	_caml_call_gc
L338:
	jmp	L336
	.cfi_adjust_cfa_offset -120
	.cfi_endproc
	.text
	.align	4
	.globl	_camlFaster_map__map_all_tail_chunks_787
_camlFaster_map__map_all_tail_chunks_787:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_adjust_cfa_offset 24
L342:
	cmpq	$1, %rbx
	je	L341
	movq	%rdi, 8(%rsp)
	movq	8(%rbx), %rsi
	movq	%rsi, (%rsp)
	movq	(%rbx), %rbx
	movq	24(%rdi), %rdi
	call	_camlFaster_map__map_tail_chunk_666
L339:
	movq	(%rsp), %rbx
	movq	8(%rsp), %rdi
	jmp	L342
	.align	2
L341:
	addq	$24, %rsp
	.cfi_adjust_cfa_offset -24
	ret
	.cfi_adjust_cfa_offset 24
	.cfi_adjust_cfa_offset -24
	.cfi_endproc
	.text
	.align	4
	.globl	_camlFaster_map__faster_map_815
_camlFaster_map__faster_map_815:
	.cfi_startproc
L344:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	$2001, %rbx
	movq	_camlFaster_map__chunked_tail_recursive_map_12_216_closure@GOTPCREL(%rip), %rax
	jmp	_camlFaster_map__plain_unrolled_prefix_5_109
	.cfi_endproc
	.data
	.quad	4087
	.globl	_camlFaster_map__split_1278_829
_camlFaster_map__split_1278_829:
	.globl	_camlFaster_map__split_221_closure
_camlFaster_map__split_221_closure:
	.quad	_caml_curry2
	.quad	5
	.quad	_camlFaster_map__split_221
	.data
	.quad	4087
	.globl	_camlFaster_map__plain_unrolled_prefix_5_1238_827
_camlFaster_map__plain_unrolled_prefix_5_1238_827:
	.globl	_camlFaster_map__plain_unrolled_prefix_5_109_closure
_camlFaster_map__plain_unrolled_prefix_5_109_closure:
	.quad	_caml_curry4
	.quad	9
	.quad	_camlFaster_map__plain_unrolled_prefix_5_109
	.data
	.quad	4087
	.globl	_camlFaster_map__faster_map_set_of_closures_832
_camlFaster_map__faster_map_set_of_closures_832:
	.globl	_camlFaster_map__faster_map_815_closure
_camlFaster_map__faster_map_815_closure:
	.quad	_caml_curry2
	.quad	5
	.quad	_camlFaster_map__faster_map_815
	.data
	.quad	4087
	.globl	_camlFaster_map__chunked_tail_recursive_map_12_set_of_closures_828
_camlFaster_map__chunked_tail_recursive_map_12_set_of_closures_828:
	.globl	_camlFaster_map__chunked_tail_recursive_map_12_216_closure
_camlFaster_map__chunked_tail_recursive_map_12_216_closure:
	.quad	_caml_curry2
	.quad	5
	.quad	_camlFaster_map__chunked_tail_recursive_map_12_216
	.data
	.quad	4087
	.globl	_camlFaster_map__plain_unrolled_map_5_1204_826
_camlFaster_map__plain_unrolled_map_5_1204_826:
	.globl	_camlFaster_map__plain_unrolled_map_5_13_closure
_camlFaster_map__plain_unrolled_map_5_13_closure:
	.quad	_caml_curry2
	.quad	5
	.quad	_camlFaster_map__plain_unrolled_map_5_13
	.data
	.quad	3068
	.globl	_camlFaster_map__string_658
_camlFaster_map__string_658:
	.ascii	"faster_map.ml"
	.space	2
	.byte	2
	.data
	.quad	3840
	.globl	_camlFaster_map__const_block_659
_camlFaster_map__const_block_659:
	.quad	_camlFaster_map__string_658
	.quad	177
	.quad	9
	.data
	.quad	3840
	.globl	_camlFaster_map__const_block_675
_camlFaster_map__const_block_675:
	.quad	_camlFaster_map__string_674
	.quad	395
	.quad	9
	.data
	.data
	.data
	.quad	2816
	.globl	_camlFaster_map__Pmakeblock_830
_camlFaster_map__Pmakeblock_830:
	.quad	_caml_exn_Match_failure
	.quad	_camlFaster_map__const_block_659
	.data
	.data
	.data
	.data
	.quad	3068
	.globl	_camlFaster_map__string_674
_camlFaster_map__string_674:
	.ascii	"faster_map.ml"
	.space	2
	.byte	2
	.data
	.quad	4864
	.globl	_camlFaster_map
_camlFaster_map:
	.quad	_camlFaster_map__plain_unrolled_map_5_13_closure
	.quad	_camlFaster_map__plain_unrolled_prefix_5_109_closure
	.quad	_camlFaster_map__chunked_tail_recursive_map_12_216_closure
	.quad	_camlFaster_map__faster_map_815_closure
	.data
	.quad	2816
	.globl	_camlFaster_map__Pmakeblock_831
_camlFaster_map__Pmakeblock_831:
	.quad	_caml_exn_Match_failure
	.quad	_camlFaster_map__const_block_675
	.text
	.align	4
	.globl	_camlFaster_map__entry
_camlFaster_map__entry:
	.cfi_startproc
L345:
	movq	$1, %rax
	ret
	.cfi_endproc
	.data
	.text
	nop
	.globl	_camlFaster_map__code_end
_camlFaster_map__code_end:
	.data
				/* relocation table start */
	.align	3
				/* relocation table end */
	.data
	.globl	_camlFaster_map__data_end
_camlFaster_map__data_end:
	.long	0
	.globl	_camlFaster_map__frametable
_camlFaster_map__frametable:
	.quad	152
	.quad	L339
	.word	33
	.word	2
	.word	0
	.word	8
	.align	3
	.quad	L346
	.quad	L338
	.word	128
	.word	13
	.word	0
	.word	3
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.word	72
	.word	96
	.word	104
	.align	3
	.quad	L333
	.word	129
	.word	12
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.word	72
	.word	96
	.word	104
	.align	3
	.quad	L347
	.quad	L332
	.word	129
	.word	13
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.word	80
	.word	88
	.word	96
	.word	104
	.align	3
	.quad	L348
	.quad	L331
	.word	129
	.word	13
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	72
	.word	80
	.word	88
	.word	96
	.word	104
	.align	3
	.quad	L349
	.quad	L330
	.word	129
	.word	13
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.word	104
	.align	3
	.quad	L350
	.quad	L329
	.word	129
	.word	13
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.word	104
	.align	3
	.quad	L351
	.quad	L328
	.word	129
	.word	13
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.word	104
	.align	3
	.quad	L352
	.quad	L327
	.word	129
	.word	13
	.word	0
	.word	8
	.word	16
	.word	24
	.word	40
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.word	104
	.align	3
	.quad	L353
	.quad	L326
	.word	129
	.word	13
	.word	0
	.word	8
	.word	16
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.word	104
	.align	3
	.quad	L354
	.quad	L325
	.word	129
	.word	13
	.word	0
	.word	8
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.word	104
	.align	3
	.quad	L355
	.quad	L324
	.word	129
	.word	13
	.word	0
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.word	104
	.align	3
	.quad	L356
	.quad	L323
	.word	129
	.word	13
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.word	104
	.align	3
	.quad	L357
	.quad	L322
	.word	129
	.word	13
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	104
	.align	3
	.quad	L358
	.quad	L321
	.word	112
	.word	1
	.word	3
	.align	3
	.quad	L194
	.word	113
	.word	0
	.align	3
	.quad	L359
	.quad	L318
	.word	112
	.word	2
	.word	0
	.word	3
	.align	3
	.quad	L196
	.word	113
	.word	1
	.word	0
	.align	3
	.quad	L360
	.quad	L195
	.word	113
	.word	2
	.word	88
	.word	96
	.align	3
	.quad	L361
	.quad	L315
	.word	112
	.word	3
	.word	0
	.word	3
	.word	8
	.align	3
	.quad	L199
	.word	113
	.word	2
	.word	0
	.word	8
	.align	3
	.quad	L362
	.quad	L198
	.word	113
	.word	3
	.word	0
	.word	88
	.word	96
	.align	3
	.quad	L363
	.quad	L197
	.word	113
	.word	3
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L364
	.quad	L312
	.word	112
	.word	4
	.word	0
	.word	3
	.word	8
	.word	16
	.align	3
	.quad	L203
	.word	113
	.word	3
	.word	0
	.word	8
	.word	16
	.align	3
	.quad	L365
	.quad	L202
	.word	113
	.word	4
	.word	0
	.word	8
	.word	88
	.word	96
	.align	3
	.quad	L366
	.quad	L201
	.word	113
	.word	4
	.word	0
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L367
	.quad	L200
	.word	113
	.word	4
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L368
	.quad	L309
	.word	112
	.word	5
	.word	0
	.word	3
	.word	8
	.word	16
	.word	24
	.align	3
	.quad	L208
	.word	113
	.word	4
	.word	0
	.word	8
	.word	16
	.word	24
	.align	3
	.quad	L369
	.quad	L207
	.word	113
	.word	5
	.word	0
	.word	8
	.word	16
	.word	88
	.word	96
	.align	3
	.quad	L370
	.quad	L206
	.word	113
	.word	5
	.word	0
	.word	8
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L371
	.quad	L205
	.word	113
	.word	5
	.word	0
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L372
	.quad	L204
	.word	113
	.word	5
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L373
	.quad	L306
	.word	112
	.word	6
	.word	0
	.word	3
	.word	8
	.word	16
	.word	24
	.word	32
	.align	3
	.quad	L214
	.word	113
	.word	5
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.align	3
	.quad	L374
	.quad	L213
	.word	113
	.word	6
	.word	0
	.word	8
	.word	16
	.word	24
	.word	88
	.word	96
	.align	3
	.quad	L375
	.quad	L212
	.word	113
	.word	6
	.word	0
	.word	8
	.word	16
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L376
	.quad	L211
	.word	113
	.word	6
	.word	0
	.word	8
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L377
	.quad	L210
	.word	113
	.word	6
	.word	0
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L378
	.quad	L209
	.word	113
	.word	6
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L379
	.quad	L303
	.word	112
	.word	7
	.word	0
	.word	3
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.align	3
	.quad	L221
	.word	113
	.word	6
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.align	3
	.quad	L380
	.quad	L220
	.word	113
	.word	7
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	88
	.word	96
	.align	3
	.quad	L381
	.quad	L219
	.word	113
	.word	7
	.word	0
	.word	8
	.word	16
	.word	24
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L382
	.quad	L218
	.word	113
	.word	7
	.word	0
	.word	8
	.word	16
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L383
	.quad	L217
	.word	113
	.word	7
	.word	0
	.word	8
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L384
	.quad	L216
	.word	113
	.word	7
	.word	0
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L385
	.quad	L215
	.word	113
	.word	7
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L386
	.quad	L300
	.word	112
	.word	8
	.word	0
	.word	3
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.align	3
	.quad	L229
	.word	113
	.word	7
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.align	3
	.quad	L387
	.quad	L228
	.word	113
	.word	8
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	88
	.word	96
	.align	3
	.quad	L388
	.quad	L227
	.word	113
	.word	8
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L389
	.quad	L226
	.word	113
	.word	8
	.word	0
	.word	8
	.word	16
	.word	24
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L390
	.quad	L225
	.word	113
	.word	8
	.word	0
	.word	8
	.word	16
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L391
	.quad	L224
	.word	113
	.word	8
	.word	0
	.word	8
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L392
	.quad	L223
	.word	113
	.word	8
	.word	0
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L393
	.quad	L222
	.word	113
	.word	8
	.word	40
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L394
	.quad	L297
	.word	112
	.word	9
	.word	0
	.word	3
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.align	3
	.quad	L238
	.word	113
	.word	8
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.align	3
	.quad	L395
	.quad	L237
	.word	113
	.word	9
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	88
	.word	96
	.align	3
	.quad	L396
	.quad	L236
	.word	113
	.word	9
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L397
	.quad	L235
	.word	113
	.word	9
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L398
	.quad	L234
	.word	113
	.word	9
	.word	0
	.word	8
	.word	16
	.word	24
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L399
	.quad	L233
	.word	113
	.word	9
	.word	0
	.word	8
	.word	16
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L400
	.quad	L232
	.word	113
	.word	9
	.word	0
	.word	8
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L401
	.quad	L231
	.word	113
	.word	9
	.word	0
	.word	40
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L402
	.quad	L230
	.word	113
	.word	9
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L403
	.quad	L294
	.word	112
	.word	10
	.word	0
	.word	3
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.align	3
	.quad	L248
	.word	113
	.word	9
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.align	3
	.quad	L404
	.quad	L247
	.word	113
	.word	10
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	88
	.word	96
	.align	3
	.quad	L405
	.quad	L246
	.word	113
	.word	10
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L406
	.quad	L245
	.word	113
	.word	10
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L407
	.quad	L244
	.word	113
	.word	10
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L408
	.quad	L243
	.word	113
	.word	10
	.word	0
	.word	8
	.word	16
	.word	24
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L409
	.quad	L242
	.word	113
	.word	10
	.word	0
	.word	8
	.word	16
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L410
	.quad	L241
	.word	113
	.word	10
	.word	0
	.word	8
	.word	40
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L411
	.quad	L240
	.word	113
	.word	10
	.word	0
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L412
	.quad	L239
	.word	113
	.word	10
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L413
	.quad	L291
	.word	112
	.word	11
	.word	0
	.word	3
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.word	72
	.align	3
	.quad	L259
	.word	113
	.word	10
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.word	72
	.align	3
	.quad	L414
	.quad	L258
	.word	113
	.word	11
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.word	88
	.word	96
	.align	3
	.quad	L415
	.quad	L257
	.word	113
	.word	11
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L416
	.quad	L256
	.word	113
	.word	11
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L417
	.quad	L255
	.word	113
	.word	11
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L418
	.quad	L254
	.word	113
	.word	11
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L419
	.quad	L253
	.word	113
	.word	11
	.word	0
	.word	8
	.word	16
	.word	24
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L420
	.quad	L252
	.word	113
	.word	11
	.word	0
	.word	8
	.word	16
	.word	40
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L421
	.quad	L251
	.word	113
	.word	11
	.word	0
	.word	8
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L422
	.quad	L250
	.word	113
	.word	11
	.word	0
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L423
	.quad	L249
	.word	113
	.word	11
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L424
	.quad	L288
	.word	112
	.word	12
	.word	0
	.word	3
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.align	3
	.quad	L271
	.word	113
	.word	11
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.align	3
	.quad	L425
	.quad	L270
	.word	113
	.word	12
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.word	72
	.word	88
	.word	96
	.align	3
	.quad	L426
	.quad	L269
	.word	113
	.word	12
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L427
	.quad	L268
	.word	113
	.word	12
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L428
	.quad	L267
	.word	113
	.word	12
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L429
	.quad	L266
	.word	113
	.word	12
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L430
	.quad	L265
	.word	113
	.word	12
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L431
	.quad	L264
	.word	113
	.word	12
	.word	0
	.word	8
	.word	16
	.word	24
	.word	40
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L432
	.quad	L263
	.word	113
	.word	12
	.word	0
	.word	8
	.word	16
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L433
	.quad	L262
	.word	113
	.word	12
	.word	0
	.word	8
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L434
	.quad	L261
	.word	113
	.word	12
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L435
	.quad	L260
	.word	113
	.word	12
	.word	0
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.align	3
	.quad	L436
	.quad	L193
	.word	16
	.word	2
	.word	3
	.word	5
	.align	3
	.quad	L190
	.word	16
	.word	3
	.word	3
	.word	5
	.word	7
	.align	3
	.quad	L178
	.word	33
	.word	2
	.word	8
	.word	16
	.align	3
	.quad	L437
	.quad	L177
	.word	33
	.word	2
	.word	0
	.word	16
	.align	3
	.quad	L438
	.quad	L184
	.word	32
	.word	2
	.word	3
	.word	5
	.align	3
	.quad	L176
	.word	64
	.word	1
	.word	3
	.align	3
	.quad	L137
	.word	65
	.word	0
	.align	3
	.quad	L439
	.quad	L173
	.word	64
	.word	2
	.word	0
	.word	3
	.align	3
	.quad	L139
	.word	65
	.word	1
	.word	0
	.align	3
	.quad	L440
	.quad	L138
	.word	65
	.word	2
	.word	32
	.word	40
	.align	3
	.quad	L441
	.quad	L170
	.word	64
	.word	3
	.word	0
	.word	3
	.word	8
	.align	3
	.quad	L142
	.word	65
	.word	2
	.word	0
	.word	8
	.align	3
	.quad	L442
	.quad	L141
	.word	65
	.word	3
	.word	0
	.word	32
	.word	40
	.align	3
	.quad	L443
	.quad	L140
	.word	65
	.word	3
	.word	24
	.word	32
	.word	40
	.align	3
	.quad	L444
	.quad	L167
	.word	64
	.word	4
	.word	0
	.word	3
	.word	8
	.word	16
	.align	3
	.quad	L146
	.word	65
	.word	3
	.word	0
	.word	8
	.word	16
	.align	3
	.quad	L445
	.quad	L145
	.word	65
	.word	4
	.word	0
	.word	8
	.word	32
	.word	40
	.align	3
	.quad	L446
	.quad	L144
	.word	65
	.word	4
	.word	0
	.word	24
	.word	32
	.word	40
	.align	3
	.quad	L447
	.quad	L143
	.word	65
	.word	4
	.word	16
	.word	24
	.word	32
	.word	40
	.align	3
	.quad	L448
	.quad	L164
	.word	64
	.word	6
	.word	0
	.word	3
	.word	8
	.word	16
	.word	24
	.word	48
	.align	3
	.quad	L153
	.word	65
	.word	5
	.word	0
	.word	8
	.word	16
	.word	24
	.word	48
	.align	3
	.quad	L449
	.quad	L152
	.word	65
	.word	6
	.word	0
	.word	8
	.word	16
	.word	32
	.word	40
	.word	48
	.align	3
	.quad	L450
	.quad	L151
	.word	65
	.word	6
	.word	0
	.word	8
	.word	24
	.word	32
	.word	40
	.word	48
	.align	3
	.quad	L451
	.quad	L150
	.word	65
	.word	6
	.word	0
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.align	3
	.quad	L452
	.quad	L149
	.word	65
	.word	6
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.align	3
	.quad	L453
	.quad	L148
	.word	65
	.word	6
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.align	3
	.quad	L454
	.quad	L147
	.word	65
	.word	6
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.align	3
	.quad	L455
	.quad	L136
	.word	80
	.word	1
	.word	3
	.align	3
	.quad	L100
	.word	81
	.word	0
	.align	3
	.quad	L456
	.quad	L133
	.word	80
	.word	2
	.word	0
	.word	3
	.align	3
	.quad	L102
	.word	81
	.word	1
	.word	0
	.align	3
	.quad	L457
	.quad	L101
	.word	81
	.word	2
	.word	24
	.word	48
	.align	3
	.quad	L458
	.quad	L130
	.word	80
	.word	3
	.word	0
	.word	3
	.word	8
	.align	3
	.quad	L105
	.word	81
	.word	2
	.word	0
	.word	8
	.align	3
	.quad	L459
	.quad	L104
	.word	81
	.word	3
	.word	8
	.word	32
	.word	48
	.align	3
	.quad	L460
	.quad	L103
	.word	81
	.word	3
	.word	24
	.word	32
	.word	48
	.align	3
	.quad	L461
	.quad	L127
	.word	80
	.word	4
	.word	0
	.word	3
	.word	8
	.word	16
	.align	3
	.quad	L109
	.word	81
	.word	3
	.word	0
	.word	8
	.word	16
	.align	3
	.quad	L462
	.quad	L108
	.word	81
	.word	4
	.word	8
	.word	16
	.word	40
	.word	48
	.align	3
	.quad	L463
	.quad	L107
	.word	81
	.word	4
	.word	16
	.word	32
	.word	40
	.word	48
	.align	3
	.quad	L464
	.quad	L106
	.word	81
	.word	4
	.word	24
	.word	32
	.word	40
	.word	48
	.align	3
	.quad	L465
	.quad	L124
	.word	80
	.word	6
	.word	3
	.word	8
	.word	16
	.word	24
	.word	56
	.word	64
	.align	3
	.quad	L115
	.word	81
	.word	5
	.word	8
	.word	16
	.word	24
	.word	56
	.word	64
	.align	3
	.quad	L466
	.quad	L114
	.word	81
	.word	6
	.word	0
	.word	16
	.word	24
	.word	48
	.word	56
	.word	64
	.align	3
	.quad	L467
	.quad	L113
	.word	81
	.word	5
	.word	0
	.word	24
	.word	48
	.word	56
	.word	64
	.align	3
	.quad	L468
	.quad	L112
	.word	81
	.word	5
	.word	0
	.word	40
	.word	48
	.word	56
	.word	64
	.align	3
	.quad	L469
	.quad	L111
	.word	81
	.word	5
	.word	0
	.word	32
	.word	40
	.word	48
	.word	64
	.align	3
	.quad	L470
	.quad	L110
	.word	81
	.word	5
	.word	0
	.word	24
	.word	32
	.word	40
	.word	48
	.align	3
	.quad	L471
	.align	3
L369:
	.set L$set$1, (L472 - .) + 1275068416
	.long	L$set$1
	.long	467184
	.quad	0
	.align	3
L455:
	.set L$set$2, (L472 - .) + 1677721600
	.long	L$set$2
	.long	262272
	.quad	0
	.align	3
L454:
	.set L$set$3, (L472 - .) + -201326592
	.long	L$set$3
	.long	270464
	.quad	0
	.align	3
L358:
	.set L$set$4, (L472 - .) + 1409286144
	.long	L$set$4
	.long	815360
	.quad	0
	.align	3
L425:
	.set L$set$5, (L472 - .) + 1275068416
	.long	L$set$5
	.long	782576
	.quad	0
	.align	3
L421:
	.set L$set$6, (L472 - .) + 1275068416
	.long	L$set$6
	.long	696560
	.quad	0
	.align	3
L362:
	.set L$set$7, (L472 - .) + 1275068416
	.long	L$set$7
	.long	413936
	.quad	0
	.align	3
L366:
	.set L$set$8, (L472 - .) + 1275068416
	.long	L$set$8
	.long	434416
	.quad	0
	.align	3
L356:
	.set L$set$9, (L472 - .) + 1409286144
	.long	L$set$9
	.long	823552
	.quad	0
	.align	3
L375:
	.set L$set$10, (L472 - .) + 1275068416
	.long	L$set$10
	.long	495856
	.quad	0
	.align	3
L374:
	.set L$set$11, (L472 - .) + 1275068416
	.long	L$set$11
	.long	499952
	.quad	0
	.align	3
L372:
	.set L$set$12, (L472 - .) + 1275068416
	.long	L$set$12
	.long	454896
	.quad	0
	.align	3
L427:
	.set L$set$13, (L472 - .) + 1275068416
	.long	L$set$13
	.long	774384
	.quad	0
	.align	3
L402:
	.set L$set$14, (L472 - .) + 1275068416
	.long	L$set$14
	.long	594160
	.quad	0
	.align	3
L432:
	.set L$set$15, (L472 - .) + 1275068416
	.long	L$set$15
	.long	753904
	.quad	0
	.align	3
L415:
	.set L$set$16, (L472 - .) + 1275068416
	.long	L$set$16
	.long	721136
	.quad	0
	.align	3
L400:
	.set L$set$17, (L472 - .) + 1275068416
	.long	L$set$17
	.long	602352
	.quad	0
	.align	3
L396:
	.set L$set$18, (L472 - .) + 1275068416
	.long	L$set$18
	.long	618736
	.quad	0
	.align	3
L393:
	.set L$set$19, (L472 - .) + 1275068416
	.long	L$set$19
	.long	553200
	.quad	0
	.align	3
L447:
	.set L$set$20, (L472 - .) + 1140850688
	.long	L$set$20
	.long	233680
	.quad	0
	.align	3
L446:
	.set L$set$21, (L472 - .) + 1140850688
	.long	L$set$21
	.long	237776
	.quad	0
	.align	3
L434:
	.set L$set$22, (L472 - .) + 1409286144
	.long	L$set$22
	.long	745728
	.quad	0
	.align	3
L406:
	.set L$set$23, (L472 - .) + 1275068416
	.long	L$set$23
	.long	663792
	.quad	0
	.align	3
L408:
	.set L$set$24, (L472 - .) + 1275068416
	.long	L$set$24
	.long	655600
	.quad	0
	.align	3
L462:
	.set L$set$25, (L472 - .) + 1140850688
	.long	L$set$25
	.long	90320
	.quad	0
	.align	3
L449:
	.set L$set$26, (L472 - .) + 1140850688
	.long	L$set$26
	.long	295120
	.quad	0
	.align	3
L390:
	.set L$set$27, (L472 - .) + 1275068416
	.long	L$set$27
	.long	565488
	.quad	0
	.align	3
L422:
	.set L$set$28, (L472 - .) + 1275068416
	.long	L$set$28
	.long	692464
	.quad	0
	.align	3
L418:
	.set L$set$29, (L472 - .) + 1275068416
	.long	L$set$29
	.long	708848
	.quad	0
	.align	3
L395:
	.set L$set$30, (L472 - .) + 1275068416
	.long	L$set$30
	.long	622832
	.quad	0
	.align	3
L380:
	.set L$set$31, (L472 - .) + 1275068416
	.long	L$set$31
	.long	536816
	.quad	0
	.align	3
L363:
	.set L$set$32, (L472 - .) + 1275068416
	.long	L$set$32
	.long	409840
	.quad	0
	.align	3
L459:
	.set L$set$33, (L472 - .) + 1140850688
	.long	L$set$33
	.long	65744
	.quad	0
	.align	3
L387:
	.set L$set$34, (L472 - .) + 1275068416
	.long	L$set$34
	.long	577776
	.quad	0
	.align	3
L376:
	.set L$set$35, (L472 - .) + 1275068416
	.long	L$set$35
	.long	491760
	.quad	0
	.align	3
L370:
	.set L$set$36, (L472 - .) + 1275068416
	.long	L$set$36
	.long	463088
	.quad	0
	.align	3
L467:
	.set L$set$37, (L472 - .) + 1140850688
	.long	L$set$37
	.long	118992
	.quad	0
	.align	3
L452:
	.set L$set$38, (L472 - .) + 1140850688
	.long	L$set$38
	.long	282832
	.quad	0
	.align	3
L410:
	.set L$set$39, (L472 - .) + 1275068416
	.long	L$set$39
	.long	647408
	.quad	0
	.align	3
L357:
	.set L$set$40, (L472 - .) + 1409286144
	.long	L$set$40
	.long	819456
	.quad	0
	.align	3
L450:
	.set L$set$41, (L472 - .) + 1140850688
	.long	L$set$41
	.long	291024
	.quad	0
	.align	3
L439:
	.set L$set$42, (L472 - .) + 1140850688
	.long	L$set$42
	.long	180432
	.quad	0
	.align	3
L378:
	.set L$set$43, (L472 - .) + 1275068416
	.long	L$set$43
	.long	483568
	.quad	0
	.align	3
L448:
	.set L$set$44, (L472 - .) + 1140850688
	.long	L$set$44
	.long	229584
	.quad	0
	.align	3
L424:
	.set L$set$45, (L472 - .) + 1409286144
	.long	L$set$45
	.long	684288
	.quad	0
	.align	3
L420:
	.set L$set$46, (L472 - .) + 1275068416
	.long	L$set$46
	.long	700656
	.quad	0
	.align	3
L367:
	.set L$set$47, (L472 - .) + 1275068416
	.long	L$set$47
	.long	430320
	.quad	0
	.align	3
L348:
	.set L$set$48, (L472 - .) + 1275068416
	.long	L$set$48
	.long	856304
	.quad	0
	.align	3
L469:
	.set L$set$49, (L472 - .) + 1140850688
	.long	L$set$49
	.long	110800
	.quad	0
	.align	3
L430:
	.set L$set$50, (L472 - .) + 1275068416
	.long	L$set$50
	.long	762096
	.quad	0
	.align	3
L401:
	.set L$set$51, (L472 - .) + 1275068416
	.long	L$set$51
	.long	598256
	.quad	0
	.align	3
L397:
	.set L$set$52, (L472 - .) + 1275068416
	.long	L$set$52
	.long	614640
	.quad	0
	.align	3
L468:
	.set L$set$53, (L472 - .) + 1140850688
	.long	L$set$53
	.long	114896
	.quad	0
	.align	3
L407:
	.set L$set$54, (L472 - .) + 1275068416
	.long	L$set$54
	.long	659696
	.quad	0
	.align	3
L386:
	.set L$set$55, (L472 - .) + 1275068416
	.long	L$set$55
	.long	512240
	.quad	0
	.align	3
L384:
	.set L$set$56, (L472 - .) + 1275068416
	.long	L$set$56
	.long	520432
	.quad	0
	.align	3
L431:
	.set L$set$57, (L472 - .) + 1275068416
	.long	L$set$57
	.long	758000
	.quad	0
	.align	3
L413:
	.set L$set$58, (L472 - .) + 1409286144
	.long	L$set$58
	.long	635136
	.quad	0
	.align	3
L398:
	.set L$set$59, (L472 - .) + 1275068416
	.long	L$set$59
	.long	610544
	.quad	0
	.align	3
L463:
	.set L$set$60, (L472 - .) + 1140850688
	.long	L$set$60
	.long	86224
	.quad	0
	.align	3
L426:
	.set L$set$61, (L472 - .) + 1275068416
	.long	L$set$61
	.long	778480
	.quad	0
	.align	3
L414:
	.set L$set$62, (L472 - .) + 1275068416
	.long	L$set$62
	.long	725232
	.quad	0
	.align	3
L377:
	.set L$set$63, (L472 - .) + 1275068416
	.long	L$set$63
	.long	487664
	.quad	0
	.align	3
L349:
	.set L$set$64, (L472 - .) + 1275068416
	.long	L$set$64
	.long	852208
	.quad	0
	.align	3
L353:
	.set L$set$65, (L472 - .) + 1275068416
	.long	L$set$65
	.long	835824
	.quad	0
	.align	3
L441:
	.set L$set$66, (L472 - .) + 1140850688
	.long	L$set$66
	.long	192720
	.quad	0
	.align	3
L365:
	.set L$set$67, (L472 - .) + 1275068416
	.long	L$set$67
	.long	438512
	.quad	0
	.align	3
L360:
	.set L$set$68, (L472 - .) + 1275068416
	.long	L$set$68
	.long	393456
	.quad	0
	.align	3
L436:
	.set L$set$69, (L472 - .) + 1409286144
	.long	L$set$69
	.long	737536
	.quad	0
	.align	3
L443:
	.set L$set$70, (L472 - .) + 1140850688
	.long	L$set$70
	.long	213200
	.quad	0
	.align	3
L440:
	.set L$set$71, (L472 - .) + 1140850688
	.long	L$set$71
	.long	196816
	.quad	0
	.align	3
L437:
	.set L$set$72, (L472 - .) + -1207959552
	.long	L$set$72
	.long	942464
	.quad	0
	.align	3
L383:
	.set L$set$73, (L472 - .) + 1275068416
	.long	L$set$73
	.long	524528
	.quad	0
	.align	3
L460:
	.set L$set$74, (L472 - .) + 1140850688
	.long	L$set$74
	.long	61648
	.quad	0
	.align	3
L438:
	.set L$set$75, (L472 - .) + 1677721600
	.long	L$set$75
	.long	917744
	.quad	0
	.align	3
L368:
	.set L$set$76, (L472 - .) + 1275068416
	.long	L$set$76
	.long	426224
	.quad	0
	.align	3
L346:
	.set L$set$77, (L472 - .) + -1811939328
	.long	L$set$77
	.long	905344
	.quad	0
	.align	3
L451:
	.set L$set$78, (L472 - .) + 1140850688
	.long	L$set$78
	.long	286928
	.quad	0
	.align	3
L382:
	.set L$set$79, (L472 - .) + 1275068416
	.long	L$set$79
	.long	528624
	.quad	0
	.align	3
L379:
	.set L$set$80, (L472 - .) + 1275068416
	.long	L$set$80
	.long	479472
	.quad	0
	.align	3
L352:
	.set L$set$81, (L472 - .) + 1275068416
	.long	L$set$81
	.long	839920
	.quad	0
	.align	3
L456:
	.set L$set$82, (L472 - .) + 1140850688
	.long	L$set$82
	.long	28880
	.quad	0
	.align	3
L403:
	.set L$set$83, (L472 - .) + 1275068416
	.long	L$set$83
	.long	590064
	.quad	0
	.align	3
L470:
	.set L$set$84, (L472 - .) + 1140850688
	.long	L$set$84
	.long	106704
	.quad	0
	.align	3
L458:
	.set L$set$85, (L472 - .) + 1140850688
	.long	L$set$85
	.long	41168
	.quad	0
	.align	3
L411:
	.set L$set$86, (L472 - .) + 1275068416
	.long	L$set$86
	.long	643312
	.quad	0
	.align	3
L389:
	.set L$set$87, (L472 - .) + 1275068416
	.long	L$set$87
	.long	569584
	.quad	0
	.align	3
L457:
	.set L$set$88, (L472 - .) + 1140850688
	.long	L$set$88
	.long	45264
	.quad	0
	.align	3
L416:
	.set L$set$89, (L472 - .) + 1275068416
	.long	L$set$89
	.long	717040
	.quad	0
	.align	3
L428:
	.set L$set$90, (L472 - .) + 1275068416
	.long	L$set$90
	.long	770288
	.quad	0
	.align	3
L354:
	.set L$set$91, (L472 - .) + 1275068416
	.long	L$set$91
	.long	831728
	.quad	0
	.align	3
L347:
	.set L$set$92, (L472 - .) + 1275068416
	.long	L$set$92
	.long	860400
	.quad	0
	.align	3
L453:
	.set L$set$93, (L472 - .) + 1140850688
	.long	L$set$93
	.long	278736
	.quad	0
	.align	3
L394:
	.set L$set$94, (L472 - .) + 1275068416
	.long	L$set$94
	.long	549104
	.quad	0
	.align	3
L388:
	.set L$set$95, (L472 - .) + 1275068416
	.long	L$set$95
	.long	573680
	.quad	0
	.align	3
L471:
	.set L$set$96, (L472 - .) + 1140850688
	.long	L$set$96
	.long	102608
	.quad	0
	.align	3
L461:
	.set L$set$97, (L472 - .) + 1140850688
	.long	L$set$97
	.long	57552
	.quad	0
	.align	3
L417:
	.set L$set$98, (L472 - .) + 1275068416
	.long	L$set$98
	.long	712944
	.quad	0
	.align	3
L466:
	.set L$set$99, (L472 - .) + -738197504
	.long	L$set$99
	.long	123264
	.quad	0
	.align	3
L423:
	.set L$set$100, (L472 - .) + 1409286144
	.long	L$set$100
	.long	688384
	.quad	0
	.align	3
L364:
	.set L$set$101, (L472 - .) + 1275068416
	.long	L$set$101
	.long	405744
	.quad	0
	.align	3
L444:
	.set L$set$102, (L472 - .) + 1140850688
	.long	L$set$102
	.long	209104
	.quad	0
	.align	3
L361:
	.set L$set$103, (L472 - .) + 1275068416
	.long	L$set$103
	.long	389360
	.quad	0
	.align	3
L351:
	.set L$set$104, (L472 - .) + 1275068416
	.long	L$set$104
	.long	844016
	.quad	0
	.align	3
L465:
	.set L$set$105, (L472 - .) + 1140850688
	.long	L$set$105
	.long	78032
	.quad	0
	.align	3
L419:
	.set L$set$106, (L472 - .) + 1275068416
	.long	L$set$106
	.long	704752
	.quad	0
	.align	3
L429:
	.set L$set$107, (L472 - .) + 1275068416
	.long	L$set$107
	.long	766192
	.quad	0
	.align	3
L464:
	.set L$set$108, (L472 - .) + 1140850688
	.long	L$set$108
	.long	82128
	.quad	0
	.align	3
L371:
	.set L$set$109, (L472 - .) + 1275068416
	.long	L$set$109
	.long	458992
	.quad	0
	.align	3
L391:
	.set L$set$110, (L472 - .) + 1275068416
	.long	L$set$110
	.long	561392
	.quad	0
	.align	3
L355:
	.set L$set$111, (L472 - .) + 1275068416
	.long	L$set$111
	.long	827632
	.quad	0
	.align	3
L409:
	.set L$set$112, (L472 - .) + 1275068416
	.long	L$set$112
	.long	651504
	.quad	0
	.align	3
L392:
	.set L$set$113, (L472 - .) + 1275068416
	.long	L$set$113
	.long	557296
	.quad	0
	.align	3
L381:
	.set L$set$114, (L472 - .) + 1275068416
	.long	L$set$114
	.long	532720
	.quad	0
	.align	3
L350:
	.set L$set$115, (L472 - .) + 1275068416
	.long	L$set$115
	.long	848112
	.quad	0
	.align	3
L435:
	.set L$set$116, (L472 - .) + 1409286144
	.long	L$set$116
	.long	741632
	.quad	0
	.align	3
L405:
	.set L$set$117, (L472 - .) + 1275068416
	.long	L$set$117
	.long	667888
	.quad	0
	.align	3
L404:
	.set L$set$118, (L472 - .) + 1275068416
	.long	L$set$118
	.long	671984
	.quad	0
	.align	3
L385:
	.set L$set$119, (L472 - .) + 1275068416
	.long	L$set$119
	.long	516336
	.quad	0
	.align	3
L412:
	.set L$set$120, (L472 - .) + 1275068416
	.long	L$set$120
	.long	639216
	.quad	0
	.align	3
L359:
	.set L$set$121, (L472 - .) + 1275068416
	.long	L$set$121
	.long	377072
	.quad	0
	.align	3
L442:
	.set L$set$122, (L472 - .) + 1140850688
	.long	L$set$122
	.long	217296
	.quad	0
	.align	3
L445:
	.set L$set$123, (L472 - .) + 1140850688
	.long	L$set$123
	.long	241872
	.quad	0
	.align	3
L433:
	.set L$set$124, (L472 - .) + 1275068416
	.long	L$set$124
	.long	749808
	.quad	0
	.align	3
L373:
	.set L$set$125, (L472 - .) + 1275068416
	.long	L$set$125
	.long	450800
	.quad	0
	.align	3
L399:
	.set L$set$126, (L472 - .) + 1275068416
	.long	L$set$126
	.long	606448
	.quad	0
L472:
	.ascii	"faster_map.ml\0"
	.align	3
