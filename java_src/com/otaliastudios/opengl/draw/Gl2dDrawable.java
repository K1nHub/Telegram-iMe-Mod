package com.otaliastudios.opengl.draw;

import android.graphics.RectF;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Gl2dDrawable.kt */
/* loaded from: classes4.dex */
public abstract class Gl2dDrawable extends GlDrawable {
    private final int coordsPerVertex = 2;

    @Override // com.otaliastudios.opengl.draw.GlDrawable
    public final int getCoordsPerVertex() {
        return this.coordsPerVertex;
    }

    public final void getBounds(RectF rect) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        float f = Float.MAX_VALUE;
        float f2 = -3.4028235E38f;
        int i = 0;
        float f3 = Float.MAX_VALUE;
        float f4 = -3.4028235E38f;
        while (getVertexArray().hasRemaining()) {
            float f5 = getVertexArray().get();
            if (i % 2 == 0) {
                f = Math.min(f, f5);
                f2 = Math.max(f2, f5);
            } else {
                f4 = Math.max(f4, f5);
                f3 = Math.min(f3, f5);
            }
            i++;
        }
        getVertexArray().rewind();
        rect.set(f, f4, f2, f3);
    }
}
