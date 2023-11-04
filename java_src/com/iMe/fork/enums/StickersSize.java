package com.iMe.fork.enums;

import java.util.ArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.LocaleController;
/* compiled from: StickersSize.kt */
/* loaded from: classes3.dex */
public enum StickersSize {
    SMALL(0.5d, C3634R.string.stickers_size_small),
    MEDIUM(1.0d, C3634R.string.stickers_size_medium),
    LARGE(1.5d, C3634R.string.stickers_size_large);
    
    public static final Companion Companion = new Companion(null);
    private final double sizeRatio;
    private final int titleResId;

    public static final String[] getTitles() {
        return Companion.getTitles();
    }

    public static final StickersSize mapNameToEnum(String str) {
        return Companion.mapNameToEnum(str);
    }

    StickersSize(double d, int i) {
        this.sizeRatio = d;
        this.titleResId = i;
    }

    public final double getSizeRatio() {
        return this.sizeRatio;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }

    /* compiled from: StickersSize.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final StickersSize mapNameToEnum(String str) {
            StickersSize stickersSize;
            StickersSize[] values = StickersSize.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    stickersSize = null;
                    break;
                }
                stickersSize = values[i];
                if (Intrinsics.areEqual(stickersSize.name(), str)) {
                    break;
                }
                i++;
            }
            return stickersSize == null ? StickersSize.MEDIUM : stickersSize;
        }

        public final String[] getTitles() {
            StickersSize[] values = StickersSize.values();
            ArrayList arrayList = new ArrayList(values.length);
            for (StickersSize stickersSize : values) {
                arrayList.add(LocaleController.getInternalString(stickersSize.getTitleResId()));
            }
            return (String[]) arrayList.toArray(new String[0]);
        }
    }
}
