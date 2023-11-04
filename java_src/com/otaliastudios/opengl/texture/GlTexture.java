package com.otaliastudios.opengl.texture;

import android.opengl.GLES20;
import com.otaliastudios.opengl.core.Egloo;
import com.otaliastudios.opengl.core.GlBindable;
import com.otaliastudios.opengl.core.GlBindableKt;
import com.otaliastudios.opengl.internal.GlKt;
import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: GlTexture.kt */
/* loaded from: classes4.dex */
public final class GlTexture implements GlBindable {
    private final Integer format;
    private final Integer height;

    /* renamed from: id */
    private final int f411id;
    private final int target;
    private final Integer type;
    private final int unit;
    private final Integer width;

    public GlTexture() {
        this(0, 0, null, 7, null);
    }

    private GlTexture(int i, int i2, Integer num, Integer num2, Integer num3, Integer num4, final Integer num5, Integer num6) {
        int intValue;
        this.unit = i;
        this.target = i2;
        this.width = num2;
        this.height = num3;
        this.format = num4;
        this.type = num6;
        if (num != null) {
            intValue = num.intValue();
        } else {
            int[] m1978constructorimpl = UIntArray.m1978constructorimpl(1);
            int m1984getSizeimpl = UIntArray.m1984getSizeimpl(m1978constructorimpl);
            int[] iArr = new int[m1984getSizeimpl];
            for (int i3 = 0; i3 < m1984getSizeimpl; i3++) {
                iArr[i3] = UIntArray.m1983getpVg5ArA(m1978constructorimpl, i3);
            }
            GLES20.glGenTextures(1, iArr, 0);
            Unit unit = Unit.INSTANCE;
            UIntArray.m1988setVXSXFK8(m1978constructorimpl, 0, UInt.m1972constructorimpl(iArr[0]));
            Egloo.checkGlError("glGenTextures");
            intValue = UIntArray.m1983getpVg5ArA(m1978constructorimpl, 0);
        }
        this.f411id = intValue;
        if (num == null) {
            GlBindableKt.use(this, new Function0<Unit>() { // from class: com.otaliastudios.opengl.texture.GlTexture.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    if (GlTexture.this.getWidth() != null && GlTexture.this.getHeight() != null && GlTexture.this.getFormat() != null && num5 != null && GlTexture.this.getType() != null) {
                        GLES20.glTexImage2D(UInt.m1972constructorimpl(GlTexture.this.getTarget()), 0, num5.intValue(), GlTexture.this.getWidth().intValue(), GlTexture.this.getHeight().intValue(), 0, UInt.m1972constructorimpl(GlTexture.this.getFormat().intValue()), UInt.m1972constructorimpl(GlTexture.this.getType().intValue()), null);
                    }
                    GLES20.glTexParameterf(UInt.m1972constructorimpl(GlTexture.this.getTarget()), GlKt.getGL_TEXTURE_MIN_FILTER(), GlKt.getGL_NEAREST());
                    GLES20.glTexParameterf(UInt.m1972constructorimpl(GlTexture.this.getTarget()), GlKt.getGL_TEXTURE_MAG_FILTER(), GlKt.getGL_LINEAR());
                    GLES20.glTexParameteri(UInt.m1972constructorimpl(GlTexture.this.getTarget()), GlKt.getGL_TEXTURE_WRAP_S(), GlKt.getGL_CLAMP_TO_EDGE());
                    GLES20.glTexParameteri(UInt.m1972constructorimpl(GlTexture.this.getTarget()), GlKt.getGL_TEXTURE_WRAP_T(), GlKt.getGL_CLAMP_TO_EDGE());
                    Egloo.checkGlError("glTexParameter");
                }
            });
        }
    }

    public final int getTarget() {
        return this.target;
    }

    public final Integer getWidth() {
        return this.width;
    }

    public final Integer getHeight() {
        return this.height;
    }

    public final Integer getFormat() {
        return this.format;
    }

    public final Integer getType() {
        return this.type;
    }

    public /* synthetic */ GlTexture(int i, int i2, Integer num, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? GlKt.getGL_TEXTURE0() : i, (i3 & 2) != 0 ? GlKt.getGL_TEXTURE_EXTERNAL_OES() : i2, (i3 & 4) != 0 ? null : num);
    }

    public GlTexture(int i, int i2, Integer num) {
        this(i, i2, num, null, null, null, null, null);
    }

    public final int getId() {
        return this.f411id;
    }

    @Override // com.otaliastudios.opengl.core.GlBindable
    public void bind() {
        GLES20.glActiveTexture(UInt.m1972constructorimpl(this.unit));
        GLES20.glBindTexture(UInt.m1972constructorimpl(this.target), UInt.m1972constructorimpl(this.f411id));
        Egloo.checkGlError("bind");
    }

    @Override // com.otaliastudios.opengl.core.GlBindable
    public void unbind() {
        GLES20.glBindTexture(UInt.m1972constructorimpl(this.target), UInt.m1972constructorimpl(0));
        GLES20.glActiveTexture(GlKt.getGL_TEXTURE0());
        Egloo.checkGlError("unbind");
    }

    public final void release() {
        int[] iArr = {UInt.m1972constructorimpl(this.f411id)};
        int m1984getSizeimpl = UIntArray.m1984getSizeimpl(iArr);
        int[] iArr2 = new int[m1984getSizeimpl];
        for (int i = 0; i < m1984getSizeimpl; i++) {
            iArr2[i] = UIntArray.m1983getpVg5ArA(iArr, i);
        }
        GLES20.glDeleteTextures(1, iArr2, 0);
        Unit unit = Unit.INSTANCE;
        UIntArray.m1988setVXSXFK8(iArr, 0, UInt.m1972constructorimpl(iArr2[0]));
    }
}
