package com.otaliastudios.opengl.draw;

import com.otaliastudios.opengl.core.Egloo;
import com.otaliastudios.opengl.viewport.GlViewportAware;
import java.nio.FloatBuffer;
/* compiled from: GlDrawable.kt */
/* loaded from: classes3.dex */
public abstract class GlDrawable extends GlViewportAware {
    private final float[] modelMatrix = (float[]) Egloo.getIDENTITY_MATRIX().clone();

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
        return getVertexArray().capacity() / getCoordsPerVertex();
    }
}
