package com.otaliastudios.opengl.program;

import com.otaliastudios.opengl.draw.GlDrawable;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GlProgram.kt */
/* loaded from: classes4.dex */
public final class GlProgram$draw$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ GlDrawable $drawable;
    final /* synthetic */ float[] $modelViewProjectionMatrix;
    final /* synthetic */ GlProgram this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GlProgram$draw$1(GlProgram glProgram, GlDrawable glDrawable, float[] fArr) {
        super(0);
        this.this$0 = glProgram;
        this.$drawable = glDrawable;
        this.$modelViewProjectionMatrix = fArr;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.onPreDraw(this.$drawable, this.$modelViewProjectionMatrix);
        this.this$0.onDraw(this.$drawable);
        this.this$0.onPostDraw(this.$drawable);
    }
}
