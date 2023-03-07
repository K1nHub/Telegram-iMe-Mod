package com.otaliastudios.opengl.draw;

import android.opengl.GLES20;
import com.otaliastudios.opengl.core.Egloo;
import com.otaliastudios.opengl.extensions.BuffersKt;
import java.nio.FloatBuffer;
import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: GlRect.kt */
/* loaded from: classes3.dex */
public class GlRect extends Gl2dDrawable {
    private static final float[] FULL_RECTANGLE_COORDS;
    private FloatBuffer vertexArray;

    public GlRect() {
        float[] fArr = (float[]) FULL_RECTANGLE_COORDS.clone();
        this.vertexArray = BuffersKt.floatBufferOf(Arrays.copyOf(fArr, fArr.length));
    }

    /* compiled from: GlRect.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
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
        GLES20.glDrawArrays(5, 0, getVertexCount());
        Egloo.checkGlError("glDrawArrays");
    }
}
