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
import kotlin.jvm.internal.Lambda;
/* compiled from: GlTexture.kt */
/* loaded from: classes4.dex */
public final class GlTexture implements GlBindable {
    private final Integer format;
    private final Integer height;

    /* renamed from: id */
    private final int f386id;
    private final int target;
    private final Integer type;
    private final int unit;
    private final Integer width;

    public GlTexture() {
        this(0, 0, null, 7, null);
    }

    private GlTexture(int i, int i2, Integer num, Integer num2, Integer num3, Integer num4, Integer num5, Integer num6) {
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
            int[] m1579constructorimpl = UIntArray.m1579constructorimpl(1);
            int m1582getSizeimpl = UIntArray.m1582getSizeimpl(m1579constructorimpl);
            int[] iArr = new int[m1582getSizeimpl];
            for (int i3 = 0; i3 < m1582getSizeimpl; i3++) {
                iArr[i3] = UIntArray.m1581getpVg5ArA(m1579constructorimpl, i3);
            }
            GLES20.glGenTextures(1, iArr, 0);
            Unit unit = Unit.INSTANCE;
            UIntArray.m1583setVXSXFK8(m1579constructorimpl, 0, UInt.m1578constructorimpl(iArr[0]));
            Egloo.checkGlError("glGenTextures");
            intValue = UIntArray.m1581getpVg5ArA(m1579constructorimpl, 0);
        }
        this.f386id = intValue;
        if (num == null) {
            GlBindableKt.use(this, new C24461(num5));
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
        return this.f386id;
    }

    /* compiled from: GlTexture.kt */
    /* renamed from: com.otaliastudios.opengl.texture.GlTexture$1 */
    /* loaded from: classes4.dex */
    static final class C24461 extends Lambda implements Function0<Unit> {
        final /* synthetic */ Integer $internalFormat;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C24461(Integer num) {
            super(0);
            this.$internalFormat = num;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            if (GlTexture.this.getWidth() != null && GlTexture.this.getHeight() != null && GlTexture.this.getFormat() != null && this.$internalFormat != null && GlTexture.this.getType() != null) {
                GLES20.glTexImage2D(UInt.m1578constructorimpl(GlTexture.this.getTarget()), 0, this.$internalFormat.intValue(), GlTexture.this.getWidth().intValue(), GlTexture.this.getHeight().intValue(), 0, UInt.m1578constructorimpl(GlTexture.this.getFormat().intValue()), UInt.m1578constructorimpl(GlTexture.this.getType().intValue()), null);
            }
            GLES20.glTexParameterf(UInt.m1578constructorimpl(GlTexture.this.getTarget()), GlKt.getGL_TEXTURE_MIN_FILTER(), GlKt.getGL_NEAREST());
            GLES20.glTexParameterf(UInt.m1578constructorimpl(GlTexture.this.getTarget()), GlKt.getGL_TEXTURE_MAG_FILTER(), GlKt.getGL_LINEAR());
            GLES20.glTexParameteri(UInt.m1578constructorimpl(GlTexture.this.getTarget()), GlKt.getGL_TEXTURE_WRAP_S(), GlKt.getGL_CLAMP_TO_EDGE());
            GLES20.glTexParameteri(UInt.m1578constructorimpl(GlTexture.this.getTarget()), GlKt.getGL_TEXTURE_WRAP_T(), GlKt.getGL_CLAMP_TO_EDGE());
            Egloo.checkGlError("glTexParameter");
        }
    }

    @Override // com.otaliastudios.opengl.core.GlBindable
    public void bind() {
        GLES20.glActiveTexture(UInt.m1578constructorimpl(this.unit));
        GLES20.glBindTexture(UInt.m1578constructorimpl(this.target), UInt.m1578constructorimpl(this.f386id));
        Egloo.checkGlError("bind");
    }

    @Override // com.otaliastudios.opengl.core.GlBindable
    public void unbind() {
        GLES20.glBindTexture(UInt.m1578constructorimpl(this.target), UInt.m1578constructorimpl(0));
        GLES20.glActiveTexture(GlKt.getGL_TEXTURE0());
        Egloo.checkGlError("unbind");
    }

    public final void release() {
        int[] iArr = {UInt.m1578constructorimpl(this.f386id)};
        int m1582getSizeimpl = UIntArray.m1582getSizeimpl(iArr);
        int[] iArr2 = new int[m1582getSizeimpl];
        for (int i = 0; i < m1582getSizeimpl; i++) {
            iArr2[i] = UIntArray.m1581getpVg5ArA(iArr, i);
        }
        GLES20.glDeleteTextures(1, iArr2, 0);
        Unit unit = Unit.INSTANCE;
        UIntArray.m1583setVXSXFK8(iArr, 0, UInt.m1578constructorimpl(iArr2[0]));
    }
}
