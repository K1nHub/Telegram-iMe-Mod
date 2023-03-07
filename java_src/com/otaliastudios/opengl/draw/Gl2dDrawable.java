package com.otaliastudios.opengl.draw;
/* compiled from: Gl2dDrawable.kt */
/* loaded from: classes3.dex */
public abstract class Gl2dDrawable extends GlDrawable {
    private final int coordsPerVertex = 2;

    @Override // com.otaliastudios.opengl.draw.GlDrawable
    public final int getCoordsPerVertex() {
        return this.coordsPerVertex;
    }
}
