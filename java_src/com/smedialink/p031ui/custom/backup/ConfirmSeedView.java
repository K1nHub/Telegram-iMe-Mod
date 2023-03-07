package com.smedialink.p031ui.custom.backup;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.view.ViewGroupKt;
import com.smedialink.p031ui.custom.backup.switcher.BackupWordSwitcher;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.telegram.messenger.databinding.ForkContentConfirmSeedBinding;
/* compiled from: ConfirmSeedView.kt */
/* renamed from: com.smedialink.ui.custom.backup.ConfirmSeedView */
/* loaded from: classes3.dex */
public final class ConfirmSeedView extends FrameLayout {
    private ForkContentConfirmSeedBinding binding;

    static {
        new Companion(null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ConfirmSeedView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ ConfirmSeedView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfirmSeedView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        ForkContentConfirmSeedBinding inflate = ForkContentConfirmSeedBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
        setupView();
    }

    public final void setSeed(List<String> seed) {
        Intrinsics.checkNotNullParameter(seed, "seed");
        drawSwitchers(seed);
    }

    public final void applyColors() {
        Sequence<BackupWordSwitcher> filter;
        LinearLayout linearLayout = this.binding.linearSwitcherWrapper;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding\n                .linearSwitcherWrapper");
        filter = SequencesKt___SequencesKt.filter(ViewGroupKt.getChildren(linearLayout), ConfirmSeedView$applyColors$$inlined$filterIsInstance$1.INSTANCE);
        for (BackupWordSwitcher backupWordSwitcher : filter) {
            backupWordSwitcher.applyColors();
        }
    }

    private final void setupView() {
        applyColors();
        addView(this.binding.getRoot());
    }

    private final void drawSwitchers(List<String> list) {
        List chunked;
        Sequence filter;
        chunked = CollectionsKt___CollectionsKt.chunked(list, calcSeedPartSize(list));
        LinearLayout linearLayout = this.binding.linearSwitcherWrapper;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding\n                .linearSwitcherWrapper");
        filter = SequencesKt___SequencesKt.filter(ViewGroupKt.getChildren(linearLayout), ConfirmSeedView$drawSwitchers$$inlined$filterIsInstance$1.INSTANCE);
        int i = 0;
        for (Object obj : filter) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            ((BackupWordSwitcher) obj).setSeed(list, (List) chunked.get(i));
            i = i2;
        }
    }

    private final int calcSeedPartSize(List<String> list) {
        return list.size() / 4;
    }

    /* compiled from: ConfirmSeedView.kt */
    /* renamed from: com.smedialink.ui.custom.backup.ConfirmSeedView$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
