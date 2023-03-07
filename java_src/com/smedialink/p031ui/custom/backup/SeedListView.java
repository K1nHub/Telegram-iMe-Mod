package com.smedialink.p031ui.custom.backup;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.view.ViewGroupKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.databinding.ForkContentSeedListBinding;
import org.telegram.p048ui.ActionBar.Theme;
/* compiled from: SeedListView.kt */
/* renamed from: com.smedialink.ui.custom.backup.SeedListView */
/* loaded from: classes3.dex */
public final class SeedListView extends FrameLayout {
    private ForkContentSeedListBinding binding;
    private int wordPosition;

    static {
        new Companion(null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SeedListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ SeedListView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SeedListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        ForkContentSeedListBinding inflate = ForkContentSeedListBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
        setupView();
    }

    public final void setSeed(List<String> seed) {
        Intrinsics.checkNotNullParameter(seed, "seed");
        drawSeed(seed);
    }

    public final void applyColors() {
        LinearLayout linearLayout = this.binding.linearRoot;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(AndroidUtilities.m51dp(9.0f));
        gradientDrawable.setColor(Theme.getColor("windowBackgroundWhite"));
        gradientDrawable.setStroke(AndroidUtilities.m51dp(1.0f), Theme.getColor("chats_actionBackground"));
        Unit unit = Unit.INSTANCE;
        linearLayout.setBackground(gradientDrawable);
        LinearLayout linearLayout2 = this.binding.linearSeedFirstPart;
        Intrinsics.checkNotNullExpressionValue(linearLayout2, "binding.linearSeedFirstPart");
        applyColorForSeedWord(linearLayout2);
        LinearLayout linearLayout3 = this.binding.linearSeedSecondPart;
        Intrinsics.checkNotNullExpressionValue(linearLayout3, "binding.linearSeedSecondPart");
        applyColorForSeedWord(linearLayout3);
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.binding.linearRoot.setOnLongClickListener(onLongClickListener);
        super.setOnLongClickListener(onLongClickListener);
    }

    private final void setupView() {
        applyColors();
        addView(this.binding.getRoot());
    }

    private final void applyColorForSeedWord(LinearLayout linearLayout) {
        Sequence<NumberBackupWordWrapper> filter;
        filter = SequencesKt___SequencesKt.filter(ViewGroupKt.getChildren(linearLayout), SeedListView$applyColorForSeedWord$$inlined$filterIsInstance$1.INSTANCE);
        for (NumberBackupWordWrapper numberBackupWordWrapper : filter) {
            numberBackupWordWrapper.applyColors();
        }
    }

    private final void drawSeed(List<String> list) {
        resetSeedState();
        int calcWordsPerColumn = calcWordsPerColumn(list);
        List<String> subList = list.subList(0, calcWordsPerColumn);
        LinearLayout linearLayout = this.binding.linearSeedFirstPart;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.linearSeedFirstPart");
        drawWords(subList, linearLayout);
        List<String> subList2 = list.subList(calcWordsPerColumn, list.size());
        LinearLayout linearLayout2 = this.binding.linearSeedSecondPart;
        Intrinsics.checkNotNullExpressionValue(linearLayout2, "binding.linearSeedSecondPart");
        drawWords(subList2, linearLayout2);
    }

    private final void resetSeedState() {
        this.wordPosition = 0;
        ForkContentSeedListBinding forkContentSeedListBinding = this.binding;
        forkContentSeedListBinding.linearSeedFirstPart.removeAllViews();
        forkContentSeedListBinding.linearSeedSecondPart.removeAllViews();
    }

    private final int calcWordsPerColumn(List<String> list) {
        return (list.size() / 2) + (list.size() % 2);
    }

    /* compiled from: SeedListView.kt */
    /* renamed from: com.smedialink.ui.custom.backup.SeedListView$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    private final void drawWords(List<String> list, ViewGroup viewGroup) {
        for (String str : list) {
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            viewGroup.addView(new NumberBackupWordWrapper(context, str, this.wordPosition + 1), new LinearLayout.LayoutParams(-2, -2));
            this.wordPosition++;
        }
    }
}
