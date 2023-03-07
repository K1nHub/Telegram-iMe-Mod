package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
/* compiled from: ViewGroup.kt */
/* loaded from: classes.dex */
public final class ViewGroupKt {
    public static final Iterator<View> iterator(ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        return new ViewGroupKt$iterator$1(viewGroup);
    }

    public static final Sequence<View> getChildren(final ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        return new Sequence<View>() { // from class: androidx.core.view.ViewGroupKt$children$1
            @Override // kotlin.sequences.Sequence
            public Iterator<View> iterator() {
                return ViewGroupKt.iterator(viewGroup);
            }
        };
    }
}
