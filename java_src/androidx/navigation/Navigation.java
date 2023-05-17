package androidx.navigation;

import android.view.View;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
/* compiled from: Navigation.kt */
/* loaded from: classes.dex */
public final class Navigation {
    public static final Navigation INSTANCE = new Navigation();

    private Navigation() {
    }

    public static final NavController findNavController(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        NavController findViewNavController = INSTANCE.findViewNavController(view);
        if (findViewNavController != null) {
            return findViewNavController;
        }
        throw new IllegalStateException("View " + view + " does not have a NavController set");
    }

    public static final void setViewNavController(View view, NavController navController) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setTag(R$id.nav_controller_view_tag, navController);
    }

    private final NavController findViewNavController(View view) {
        Sequence generateSequence;
        Sequence mapNotNull;
        generateSequence = SequencesKt__SequencesKt.generateSequence(view, Navigation$findViewNavController$1.INSTANCE);
        mapNotNull = SequencesKt___SequencesKt.mapNotNull(generateSequence, Navigation$findViewNavController$2.INSTANCE);
        return (NavController) SequencesKt.firstOrNull(mapNotNull);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final NavController getViewNavController(View view) {
        Object tag = view.getTag(R$id.nav_controller_view_tag);
        if (tag instanceof WeakReference) {
            return (NavController) ((WeakReference) tag).get();
        }
        if (tag instanceof NavController) {
            return (NavController) tag;
        }
        return null;
    }
}
