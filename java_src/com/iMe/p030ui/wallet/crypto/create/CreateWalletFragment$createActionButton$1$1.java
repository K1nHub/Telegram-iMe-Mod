package com.iMe.p030ui.wallet.crypto.create;

import android.view.View;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.create.CreateWalletScreenType;
import com.iMe.p030ui.wallet.crypto.create.CreateWalletFragment;
import com.iMe.storage.data.utils.extentions.StringExtKt;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3630R;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CreateWalletFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$createActionButton$1$1 */
/* loaded from: classes3.dex */
public final class CreateWalletFragment$createActionButton$1$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ CreateWalletFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateWalletFragment$createActionButton$1$1(CreateWalletFragment createWalletFragment) {
        super(1);
        this.this$0 = createWalletFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$2$lambda$1() {
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        CreateWalletScreenType createWalletScreenType;
        boolean checkEditTexts;
        int collectionSizeOrDefault;
        boolean checkEditTexts2;
        List list;
        CreateWalletScreenType createWalletScreenType2;
        ResourceManager resourceManager;
        ResourceManager resourceManager2;
        ResourceManager resourceManager3;
        ResourceManager resourceManager4;
        CreateWalletScreenType createWalletScreenType3;
        CreateWalletScreenType createWalletScreenType4;
        CreateWalletScreenType createWalletScreenType5;
        CreateWalletScreenType createWalletScreenType6;
        Intrinsics.checkNotNullParameter(it, "it");
        if (this.this$0.getParentActivity() == null) {
            return;
        }
        this.this$0.hideHint();
        createWalletScreenType = this.this$0.screenType;
        if (createWalletScreenType instanceof CreateWalletScreenType.SecretWords) {
            createWalletScreenType3 = this.this$0.screenType;
            if (((CreateWalletScreenType.SecretWords) createWalletScreenType3).getPassword().length() > 0) {
                CreateWalletFragment createWalletFragment = this.this$0;
                CreateWalletFragment.Companion companion = CreateWalletFragment.Companion;
                createWalletScreenType4 = createWalletFragment.screenType;
                List<String> secretWords = ((CreateWalletScreenType.SecretWords) createWalletScreenType4).getSecretWords();
                createWalletScreenType5 = this.this$0.screenType;
                String password = ((CreateWalletScreenType.SecretWords) createWalletScreenType5).getPassword();
                createWalletScreenType6 = this.this$0.screenType;
                CreateWalletFragment newInstance = companion.newInstance(new CreateWalletScreenType.WordsCheck(secretWords, password, ((CreateWalletScreenType.SecretWords) createWalletScreenType6).getPin()));
                newInstance.fragmentToRemove = this.this$0;
                createWalletFragment.presentFragment(newInstance);
                return;
            }
            this.this$0.finishFragment();
        } else if (createWalletScreenType instanceof CreateWalletScreenType.WordsCheck) {
            checkEditTexts2 = this.this$0.checkEditTexts();
            if (checkEditTexts2) {
                list = this.this$0.checkWordIndices;
                final CreateWalletFragment createWalletFragment2 = this.this$0;
                int i = 0;
                for (Object obj : list) {
                    int i2 = i + 1;
                    if (i < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    int intValue = ((Number) obj).intValue();
                    createWalletScreenType2 = createWalletFragment2.screenType;
                    if (!Intrinsics.areEqual(((CreateWalletScreenType.WordsCheck) createWalletScreenType2).getSecretWords().get(intValue), ((CreateWalletFragment.NumericEditText) createWalletFragment2.editTexts.get(i)).getText().toString())) {
                        resourceManager = createWalletFragment2.getResourceManager();
                        String string = resourceManager.getString(C3630R.string.wallet_backup_test_time_alert_title);
                        resourceManager2 = createWalletFragment2.getResourceManager();
                        String string2 = resourceManager2.getString(C3630R.string.wallet_backup_test_time_alert_text);
                        resourceManager3 = createWalletFragment2.getResourceManager();
                        String string3 = resourceManager3.getString(C3630R.string.wallet_backup_test_time_alert_button_see);
                        resourceManager4 = createWalletFragment2.getResourceManager();
                        createWalletFragment2.showAlertDialog(new DialogModel(string, string2, string3, resourceManager4.getString(C3630R.string.wallet_backup_test_time_alert_button_try)), new Callbacks$Callback() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$createActionButton$1$1$$ExternalSyntheticLambda1
                            @Override // com.iMe.fork.utils.Callbacks$Callback
                            public final void invoke() {
                                CreateWalletFragment$createActionButton$1$1.invoke$lambda$2$lambda$1();
                            }
                        }, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$createActionButton$1$1$$ExternalSyntheticLambda0
                            @Override // com.iMe.fork.utils.Callbacks$Callback
                            public final void invoke() {
                                CreateWalletFragment.this.finishFragment();
                            }
                        }, false);
                        return;
                    }
                    i = i2;
                }
                this.this$0.getPresenter().onSecretWordsCheckCompleted();
            }
        } else if (createWalletScreenType instanceof CreateWalletScreenType.Import) {
            checkEditTexts = this.this$0.checkEditTexts();
            if (checkEditTexts) {
                CreateWalletPresenter presenter = this.this$0.getPresenter();
                List<CreateWalletFragment.NumericEditText> list2 = this.this$0.editTexts;
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (CreateWalletFragment.NumericEditText numericEditText : list2) {
                    arrayList.add(numericEditText.getText().toString());
                }
                presenter.validateSeed(StringExtKt.joinBySpace(arrayList));
            }
        } else {
            if (createWalletScreenType instanceof CreateWalletScreenType.Ready ? true : createWalletScreenType instanceof CreateWalletScreenType.TooBad) {
                this.this$0.finishFragment();
            }
        }
    }
}
