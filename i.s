;   Copyright 2022 Will Thomas
;
;   Licensed under the Apache License, Version 2.0 (the "License");
;   you may not use this file except in compliance with the License.
;   You may obtain a copy of the License at
;
;       http:;www.apache.org/licenses/LICENSE-2.0;
;
;   Unless required by applicable law or agreed to in writing, software
;   distributed under the License is distributed on an "AS IS" BASIS,
;   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
;   See the License for the specific language governing permissions and
;   limitations under the License.

	ldr r0, *gpio
	mov r1, 8
	str r1, r0, 8
	
	ldr r1, *pin21
	
*loop
	str r1, r0, 28
	mov r4, r1
	bl *del
	
	str r1, r0, 40
	mov r4, r1
	bl *del
	
	b *loop
	
*del
	subs r4, r4, 1
	bne *del
	bx lr
	
*pin21
	~byt4 0x00200000

*gpio
	~byt4 0x3f200000
