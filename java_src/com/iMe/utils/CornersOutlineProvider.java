package com.iMe.utils;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CornersOutlineProvider.kt */
/* loaded from: classes6.dex */
public final class CornersOutlineProvider extends ViewOutlineProvider {
    private final float radius;
    private final RoundCorners roundCorners;

    /* compiled from: CornersOutlineProvider.kt */
    /* loaded from: classes6.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[RoundCorners.values().length];
            try {
                iArr[RoundCorners.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RoundCorners.LEFT_SIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[RoundCorners.RIGHT_SIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[RoundCorners.TOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[RoundCorners.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ CornersOutlineProvider(RoundCorners roundCorners, float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? RoundCorners.ALL : roundCorners, (i & 2) != 0 ? 4.0f : f);
    }

    public CornersOutlineProvider(RoundCorners roundCorners, float f) {
        Intrinsics.checkNotNullParameter(roundCorners, "roundCorners");
        this.roundCorners = roundCorners;
        this.radius = f;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(outline, "outline");
        int width = view.getWidth();
        int height = view.getHeight();
        int dpToPx = ViewExtKt.getDpToPx(this.radius);
        int i = WhenMappings.$EnumSwitchMapping$0[this.roundCorners.ordinal()];
        if (i == 1) {
            outline.setRoundRect(0, 0, width, height, dpToPx);
        } else if (i == 2) {
            outline.setRoundRect(0, 0, width + dpToPx, height, dpToPx);
        } else if (i == 3) {
            outline.setRoundRect(0 - dpToPx, 0, width, height, dpToPx);
        } else if (i == 4) {
            outline.setRoundRect(0, 0, width, height + dpToPx, dpToPx);
        } else if (i != 5) {
        } else {
            outline.setRoundRect(0, 0 - dpToPx, width, height, dpToPx);
        }
    }
}
