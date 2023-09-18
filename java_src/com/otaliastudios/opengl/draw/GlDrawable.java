package com.otaliastudios.opengl.draw;

import com.otaliastudios.opengl.core.Egloo;
import com.otaliastudios.opengl.core.GlViewportAware;
import com.otaliastudios.opengl.internal.MiscKt;
import java.nio.FloatBuffer;
/* compiled from: GlDrawable.kt */
/* loaded from: classes6.dex */
public abstract class GlDrawable extends GlViewportAware {
    private final float[] modelMatrix = MiscKt.matrixClone(Egloo.IDENTITY_MATRIX);
    private int vertexArrayVersion;

    public abstract void draw();

    public abstract int getCoordsPerVertex();

    public abstract FloatBuffer getVertexArray();

    public final float[] getModelMatrix() {
        return this.modelMatrix;
    }

    public int getVertexStride() {
        return getCoordsPerVertex() * 4;
    }

    public int getVertexCount() {
        return getVertexArray().limit() / getCoordsPerVertex();
    }

    public final int getVertexArrayVersion() {
        return this.vertexArrayVersion;
    }
}
