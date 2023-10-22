package io.ktor.network.selector;

import java.util.ArrayList;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: SelectorManager.kt */
/* loaded from: classes4.dex */
public enum SelectInterest {
    READ(1),
    WRITE(4),
    ACCEPT(16),
    CONNECT(8);
    
    private static final int[] flags;
    private static final int size;
    private final int flag;
    public static final Companion Companion = new Companion(null);
    private static final SelectInterest[] AllInterests = values();

    SelectInterest(int i) {
        this.flag = i;
    }

    public final int getFlag() {
        return this.flag;
    }

    static {
        int[] intArray;
        SelectInterest[] values = values();
        ArrayList arrayList = new ArrayList(values.length);
        for (SelectInterest selectInterest : values) {
            arrayList.add(Integer.valueOf(selectInterest.flag));
        }
        intArray = CollectionsKt___CollectionsKt.toIntArray(arrayList);
        flags = intArray;
        size = values().length;
    }

    /* compiled from: SelectorManager.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final SelectInterest[] getAllInterests() {
            return SelectInterest.AllInterests;
        }

        public final int[] getFlags() {
            return SelectInterest.flags;
        }
    }
}
