package com.smedialink.p031ui.custom.backup;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.databinding.ForkContentBackupNumberWordBinding;
import org.telegram.p048ui.ActionBar.Theme;
/* compiled from: NumberBackupWordWrapper.kt */
/* renamed from: com.smedialink.ui.custom.backup.NumberBackupWordWrapper */
/* loaded from: classes3.dex */
public final class NumberBackupWordWrapper extends FrameLayout {
    private ForkContentBackupNumberWordBinding binding;

    public /* synthetic */ NumberBackupWordWrapper(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NumberBackupWordWrapper(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        ForkContentBackupNumberWordBinding inflate = ForkContentBackupNumberWordBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NumberBackupWordWrapper(Context context, String word, int i) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(word, "word");
        setupView(word, i);
    }

    public final void applyColors() {
        ForkContentBackupNumberWordBinding forkContentBackupNumberWordBinding = this.binding;
        forkContentBackupNumberWordBinding.textNumber.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText2"));
        forkContentBackupNumberWordBinding.viewBackupWord.applyColors();
    }

    private final void setupView(String str, int i) {
        ForkContentBackupNumberWordBinding forkContentBackupNumberWordBinding = this.binding;
        forkContentBackupNumberWordBinding.textNumber.setText(String.valueOf(i));
        forkContentBackupNumberWordBinding.textNumber.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText2"));
        forkContentBackupNumberWordBinding.viewBackupWord.setWord(str);
        addView(this.binding.getRoot());
    }
}
