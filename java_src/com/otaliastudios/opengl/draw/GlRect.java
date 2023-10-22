package com.otaliastudios.opengl.draw;

import android.opengl.GLES20;
import com.otaliastudios.opengl.core.Egloo;
import com.otaliastudios.opengl.internal.GlKt;
import com.otaliastudios.opengl.types.BuffersJvmKt;
import java.nio.FloatBuffer;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: GlRect.kt */
/* loaded from: classes4.dex */
public class GlRect extends Gl2dDrawable {
    @Deprecated
    private static final float[] FULL_RECTANGLE_COORDS;
    private FloatBuffer vertexArray;

    public GlRect() {
        float[] fArr = FULL_RECTANGLE_COORDS;
        FloatBuffer floatBuffer = BuffersJvmKt.floatBuffer(fArr.length);
        floatBuffer.put(fArr);
        floatBuffer.clear();
        Unit unit = Unit.INSTANCE;
        this.vertexArray = floatBuffer;
    }

    /* compiled from: GlRect.kt */
    /* loaded from: classes4.dex */
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        new Companion(null);
        FULL_RECTANGLE_COORDS = new float[]{-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f};
    }

    @Override // com.otaliastudios.opengl.draw.GlDrawable
    public FloatBuffer getVertexArray() {
        return this.vertexArray;
    }

    @Override // com.otaliastudios.opengl.draw.GlDrawable
    public void draw() {
        Egloo.checkGlError("glDrawArrays start");
        GLES20.glDrawArrays(GlKt.getGL_TRIANGLE_STRIP(), 0, getVertexCount());
        Egloo.checkGlError("glDrawArrays end");
    }
}
