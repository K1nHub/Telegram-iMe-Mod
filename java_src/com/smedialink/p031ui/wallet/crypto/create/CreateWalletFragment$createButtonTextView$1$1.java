package com.smedialink.p031ui.wallet.crypto.create;

import android.view.View;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.p031ui.wallet.crypto.create.CreateWalletFragment;
import com.smedialink.storage.data.utils.extentions.StringExtKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.fork.utils.Callbacks$Callback;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.LocaleController;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CreateWalletFragment.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$createButtonTextView$1$1 */
/* loaded from: classes3.dex */
public final class CreateWalletFragment$createButtonTextView$1$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ CreateWalletFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateWalletFragment$createButtonTextView$1$1(CreateWalletFragment createWalletFragment) {
        super(1);
        this.this$0 = createWalletFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invoke$lambda-2$lambda-1  reason: not valid java name */
    public static final void m1597invoke$lambda2$lambda1() {
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        boolean checkEditTexts;
        CreateWalletPresenter presenter;
        int collectionSizeOrDefault;
        boolean checkEditTexts2;
        CreateWalletPresenter presenter2;
        Intrinsics.checkNotNullParameter(it, "it");
        if (this.this$0.getParentActivity() == null) {
            return;
        }
        this.this$0.hideHint();
        CreateWalletFragment.ScreenType screenType = this.this$0.currentType;
        if (screenType instanceof CreateWalletFragment.ScreenType.SecretWords) {
            if (((CreateWalletFragment.ScreenType.SecretWords) this.this$0.currentType).getAddress().length() == 0) {
                CreateWalletFragment createWalletFragment = this.this$0;
                CreateWalletFragment newInstance = CreateWalletFragment.Companion.newInstance(new CreateWalletFragment.ScreenType.WordsCheck(((CreateWalletFragment.ScreenType.SecretWords) createWalletFragment.currentType).getSecretWords(), ((CreateWalletFragment.ScreenType.SecretWords) this.this$0.currentType).getPassword(), ((CreateWalletFragment.ScreenType.SecretWords) this.this$0.currentType).getPin()));
                newInstance.fragmentToRemove = this.this$0;
                Unit unit = Unit.INSTANCE;
                createWalletFragment.presentFragment(newInstance);
                return;
            }
            this.this$0.finishFragment();
        } else if (screenType instanceof CreateWalletFragment.ScreenType.WordsCheck) {
            checkEditTexts2 = this.this$0.checkEditTexts();
            if (checkEditTexts2) {
                List list = this.this$0.checkWordIndices;
                final CreateWalletFragment createWalletFragment2 = this.this$0;
                int i = 0;
                for (Object obj : list) {
                    int i2 = i + 1;
                    if (i < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    if (!Intrinsics.areEqual(((CreateWalletFragment.ScreenType.WordsCheck) createWalletFragment2.currentType).getSecretWords().get(((Number) obj).intValue()), ((CreateWalletFragment.NumericEditText) createWalletFragment2.editTexts.get(i)).getText().toString())) {
                        createWalletFragment2.showAlertDialog(new DialogModel(LocaleController.getInternalString(C3158R.string.wallet_backup_test_time_alert_title), LocaleController.getInternalString(C3158R.string.wallet_backup_test_time_alert_text), LocaleController.getInternalString(C3158R.string.wallet_backup_test_time_alert_button_see), LocaleController.getInternalString(C3158R.string.wallet_backup_test_time_alert_button_try)), C1926xc3945669.INSTANCE, new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$createButtonTextView$1$1$$ExternalSyntheticLambda0
                            @Override // org.fork.utils.Callbacks$Callback
                            public final void invoke() {
                                CreateWalletFragment.this.finishFragment();
                            }
                        }, false);
                        return;
                    }
                    i = i2;
                }
                presenter2 = this.this$0.getPresenter();
                presenter2.onSecretWordsCheckCompleted();
            }
        } else if (screenType instanceof CreateWalletFragment.ScreenType.Import) {
            checkEditTexts = this.this$0.checkEditTexts();
            if (checkEditTexts) {
                presenter = this.this$0.getPresenter();
                List<CreateWalletFragment.NumericEditText> list2 = this.this$0.editTexts;
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (CreateWalletFragment.NumericEditText numericEditText : list2) {
                    arrayList.add(numericEditText.getText().toString());
                }
                presenter.validateSeed(StringExtKt.joinBySpace(arrayList));
            }
        } else {
            if (screenType instanceof CreateWalletFragment.ScreenType.Ready ? true : screenType instanceof CreateWalletFragment.ScreenType.TooBad) {
                this.this$0.finishFragment();
            }
        }
    }
}
