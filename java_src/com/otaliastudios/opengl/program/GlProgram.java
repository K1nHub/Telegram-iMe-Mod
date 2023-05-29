package com.otaliastudios.opengl.program;

import android.opengl.GLES20;
import com.otaliastudios.opengl.core.Egloo;
import com.otaliastudios.opengl.core.GlBindable;
import com.otaliastudios.opengl.core.GlBindableKt;
import com.otaliastudios.opengl.draw.GlDrawable;
import com.otaliastudios.opengl.internal.GlKt;
import kotlin.UInt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GlProgram.kt */
/* loaded from: classes4.dex */
public class GlProgram implements GlBindable {
    public static final Companion Companion = new Companion(null);
    private final int handle;
    private boolean isReleased;
    private final boolean ownsHandle;
    private final GlShader[] shaders;

    public final void draw(GlDrawable drawable) {
        Intrinsics.checkNotNullParameter(drawable, "drawable");
        draw$default(this, drawable, null, 2, null);
    }

    public void onPostDraw(GlDrawable drawable) {
        Intrinsics.checkNotNullParameter(drawable, "drawable");
    }

    public void onPreDraw(GlDrawable drawable, float[] modelViewProjectionMatrix) {
        Intrinsics.checkNotNullParameter(drawable, "drawable");
        Intrinsics.checkNotNullParameter(modelViewProjectionMatrix, "modelViewProjectionMatrix");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public GlProgram(int i, boolean z, GlShader... shaders) {
        Intrinsics.checkNotNullParameter(shaders, "shaders");
        this.handle = i;
        this.ownsHandle = z;
        this.shaders = shaders;
    }

    public void release() {
        if (this.isReleased) {
            return;
        }
        if (this.ownsHandle) {
            GLES20.glDeleteProgram(UInt.m1580constructorimpl(this.handle));
        }
        for (GlShader glShader : this.shaders) {
            glShader.release();
        }
        this.isReleased = true;
    }

    @Override // com.otaliastudios.opengl.core.GlBindable
    public void bind() {
        GLES20.glUseProgram(UInt.m1580constructorimpl(this.handle));
        Egloo.checkGlError("glUseProgram");
    }

    public static /* synthetic */ void draw$default(GlProgram glProgram, GlDrawable glDrawable, float[] fArr, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: draw");
        }
        if ((i & 2) != 0) {
            fArr = glDrawable.getModelMatrix();
        }
        glProgram.draw(glDrawable, fArr);
    }

    public final void draw(GlDrawable drawable, float[] modelViewProjectionMatrix) {
        Intrinsics.checkNotNullParameter(drawable, "drawable");
        Intrinsics.checkNotNullParameter(modelViewProjectionMatrix, "modelViewProjectionMatrix");
        Egloo.checkGlError("draw start");
        GlBindableKt.use(this, new GlProgram$draw$1(this, drawable, modelViewProjectionMatrix));
        Egloo.checkGlError("draw end");
    }

    public void onDraw(GlDrawable drawable) {
        Intrinsics.checkNotNullParameter(drawable, "drawable");
        drawable.draw();
    }

    /* compiled from: GlProgram.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int create(GlShader... shaders) {
            Intrinsics.checkNotNullParameter(shaders, "shaders");
            int m1580constructorimpl = UInt.m1580constructorimpl(GLES20.glCreateProgram());
            Egloo.checkGlError("glCreateProgram");
            if (m1580constructorimpl == 0) {
                throw new RuntimeException("Could not create program");
            }
            for (GlShader glShader : shaders) {
                GLES20.glAttachShader(m1580constructorimpl, UInt.m1580constructorimpl(glShader.getId()));
                Egloo.checkGlError("glAttachShader");
            }
            GLES20.glLinkProgram(m1580constructorimpl);
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(m1580constructorimpl, GlKt.getGL_LINK_STATUS(), iArr, 0);
            if (iArr[0] == GlKt.getGL_TRUE()) {
                return m1580constructorimpl;
            }
            String stringPlus = Intrinsics.stringPlus("Could not link program: ", GLES20.glGetProgramInfoLog(m1580constructorimpl));
            GLES20.glDeleteProgram(m1580constructorimpl);
            throw new RuntimeException(stringPlus);
        }

        private Companion() {
        }

        public final int create(String vertexShaderSource, String fragmentShaderSource) {
            Intrinsics.checkNotNullParameter(vertexShaderSource, "vertexShaderSource");
            Intrinsics.checkNotNullParameter(fragmentShaderSource, "fragmentShaderSource");
            return create(new GlShader(GlKt.getGL_VERTEX_SHADER(), vertexShaderSource), new GlShader(GlKt.getGL_FRAGMENT_SHADER(), fragmentShaderSource));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final GlProgramLocation getAttribHandle(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return GlProgramLocation.Companion.getAttrib(this.handle, name);
    }

    @Override // com.otaliastudios.opengl.core.GlBindable
    public void unbind() {
        GLES20.glUseProgram(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final GlProgramLocation getUniformHandle(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return GlProgramLocation.Companion.getUniform(this.handle, name);
    }
}
