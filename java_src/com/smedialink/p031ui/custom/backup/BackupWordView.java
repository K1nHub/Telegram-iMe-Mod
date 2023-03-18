package com.smedialink.p031ui.custom.backup;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.smedialink.utils.extentions.common.ViewExtKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.databinding.ForkContentBackupWordBinding;
import org.telegram.p048ui.ActionBar.Theme;
/* compiled from: BackupWordView.kt */
/* renamed from: com.smedialink.ui.custom.backup.BackupWordView */
/* loaded from: classes3.dex */
public final class BackupWordView extends FrameLayout {
    private ForkContentBackupWordBinding binding;
    private boolean checked;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BackupWordView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ BackupWordView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BackupWordView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        ForkContentBackupWordBinding inflate = ForkContentBackupWordBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
        setupView();
    }

    public final boolean getChecked() {
        return this.checked;
    }

    public final void setChecked(boolean z) {
        this.checked = z;
        markChecked(z);
    }

    public final String getWord() {
        return this.binding.textWord.getText().toString();
    }

    public final void setWord(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.binding.textWord.setText(value);
    }

    public final void applyColors() {
        ForkContentBackupWordBinding forkContentBackupWordBinding = this.binding;
        forkContentBackupWordBinding.cardWord.setCardBackgroundColor(Theme.getColor("windowBackgroundWhite"));
        AppCompatTextView applyColors$lambda$1$lambda$0 = forkContentBackupWordBinding.textWord;
        applyColors$lambda$1$lambda$0.setTextColor(Theme.getColor("chats_actionBackground"));
        Intrinsics.checkNotNullExpressionValue(applyColors$lambda$1$lambda$0, "applyColors$lambda$1$lambda$0");
        ViewExtKt.withMediumTypeface(applyColors$lambda$1$lambda$0);
    }

    private final void setupView() {
        applyColors();
        addView(this.binding.getRoot());
    }

    private final void markChecked(boolean z) {
        ForkContentBackupWordBinding forkContentBackupWordBinding = this.binding;
        if (z) {
            forkContentBackupWordBinding.cardWord.setCardBackgroundColor(Theme.getColor("chats_actionBackground"));
            forkContentBackupWordBinding.textWord.setTextColor(Theme.getColor("actionBarDefaultTitle"));
            return;
        }
        forkContentBackupWordBinding.cardWord.setCardBackgroundColor(Theme.getColor("windowBackgroundWhite"));
        forkContentBackupWordBinding.textWord.setTextColor(Theme.getColor("chats_actionBackground"));
    }
}
