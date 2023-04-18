package com.iMe.fork.p024ui.dialog;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import com.iMe.storage.domain.model.crypto.level.AccountLevelInformation;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p043mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.LocaleController;
import org.telegram.p044ui.ActionBar.AlertDialog;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Cells.CheckBoxCell;
import org.telegram.p044ui.Components.LayoutHelper;
/* compiled from: AccountLevelAlert.kt */
/* renamed from: com.iMe.fork.ui.dialog.AccountLevelAlert */
/* loaded from: classes3.dex */
public final class AccountLevelAlert extends AlertDialog.Builder implements KoinComponent {
    private final AccountLevelInformation accountLevelInformation;
    private final Lazy resourceManager$delegate;
    private final OnVisibilityChangedListener visibilityChangedListener;

    /* compiled from: AccountLevelAlert.kt */
    /* renamed from: com.iMe.fork.ui.dialog.AccountLevelAlert$OnVisibilityChangedListener */
    /* loaded from: classes3.dex */
    public interface OnVisibilityChangedListener {
        void onChanged(boolean z);
    }

    static {
        new Companion(null);
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountLevelAlert(Context mContext, AccountLevelInformation accountLevelInformation, OnVisibilityChangedListener visibilityChangedListener) {
        super(mContext);
        Lazy lazy;
        AccountLevel[] values;
        Drawable drawable;
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        Intrinsics.checkNotNullParameter(accountLevelInformation, "accountLevelInformation");
        Intrinsics.checkNotNullParameter(visibilityChangedListener, "visibilityChangedListener");
        this.accountLevelInformation = accountLevelInformation;
        this.visibilityChangedListener = visibilityChangedListener;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new AccountLevelAlert$special$$inlined$inject$default$1(this, null, null));
        this.resourceManager$delegate = lazy;
        setTitle(LocaleController.formatStringInternal(C3242R.string.wallet_account_level_alert_title, accountLevelInformation.getLevel().name()));
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        for (AccountLevel accountLevel : AccountLevel.values()) {
            TextView textView = new TextView(linearLayout.getContext());
            textView.setText(LocaleController.formatStringInternal(C3242R.string.wallet_account_level_description, accountLevel.name(), accountLevel.getFullDescription(getResourceManager())));
            textView.setTextColor(Theme.getColor("dialogTextBlack"));
            Drawable drawable2 = ContextCompat.getDrawable(mContext, C3242R.C3244drawable.fork_account_level_badge_20);
            if (drawable2 == null || (drawable = drawable2.mutate()) == null) {
                drawable = null;
            } else {
                drawable.setColorFilter(new PorterDuffColorFilter(ContextCompat.getColor(mContext, accountLevel.getColorResId()), PorterDuff.Mode.SRC_IN));
            }
            textView.setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
            textView.setTextSize(1, 16.0f);
            textView.setCompoundDrawablePadding(AndroidUtilities.m51dp(10.0f));
            linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, 48, 23, 6, 0, 12));
        }
        final CheckBoxCell checkBoxCell = new CheckBoxCell(linearLayout.getContext(), 2);
        checkBoxCell.setMultiline(true);
        checkBoxCell.setText(LocaleController.getInternalString(C3242R.string.wallet_account_level_alert_public), null, this.accountLevelInformation.isPublic(), false);
        checkBoxCell.setTextColor(Theme.getColor("dialogTextBlack"));
        checkBoxCell.setPadding(AndroidUtilities.m51dp(24.0f), AndroidUtilities.m51dp(12.0f), AndroidUtilities.m51dp(24.0f), 0);
        checkBoxCell.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.dialog.AccountLevelAlert$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AccountLevelAlert.lambda$5$lambda$4$lambda$3(CheckBoxCell.this, this, view);
            }
        });
        linearLayout.addView(checkBoxCell);
        setView(linearLayout);
        setPositiveButton(LocaleController.getString("OK", C3242R.string.OK), null);
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void lambda$5$lambda$4$lambda$3(CheckBoxCell this_apply, AccountLevelAlert this$0, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this_apply.setChecked(!this_apply.isChecked(), true);
        AccountLevelInformation accountLevelInformation = this$0.accountLevelInformation;
        accountLevelInformation.setPublic(!accountLevelInformation.isPublic());
        this$0.visibilityChangedListener.onChanged(this$0.accountLevelInformation.isPublic());
    }

    /* compiled from: AccountLevelAlert.kt */
    /* renamed from: com.iMe.fork.ui.dialog.AccountLevelAlert$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}