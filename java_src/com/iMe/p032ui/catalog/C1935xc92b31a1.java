package com.iMe.p032ui.catalog;

import com.iMe.mapper.catalog.CatalogLanguagesUiMappingKt;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.catalog.CatalogLanguage;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.Collection;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.LocaleController;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.catalog.CatalogRootPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1935xc92b31a1 extends Lambda implements Function1<Result<? extends List<? extends CatalogLanguage>>, Unit> {
    final /* synthetic */ CatalogRootPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1935xc92b31a1(CatalogRootPresenter catalogRootPresenter) {
        super(1);
        this.this$0 = catalogRootPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends CatalogLanguage>> result) {
        m1302invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1302invoke(Result<? extends List<? extends CatalogLanguage>> it) {
        ResourceManager resourceManager;
        LocaleController.LocaleInfo allLanguagesLocaleInfo;
        List listOf;
        List plus;
        int selectedLanguageId;
        List<? extends LocaleController.LocaleInfo> list;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<? extends CatalogLanguage>> result = it;
        if (result instanceof Result.Success) {
            CatalogRootPresenter catalogRootPresenter = this.this$0;
            allLanguagesLocaleInfo = catalogRootPresenter.getAllLanguagesLocaleInfo();
            listOf = CollectionsKt__CollectionsJVMKt.listOf(allLanguagesLocaleInfo);
            plus = CollectionsKt___CollectionsKt.plus((Collection) listOf, (Iterable) CatalogLanguagesUiMappingKt.mapToUI((List) ((Result.Success) result).getData()));
            catalogRootPresenter.languages = plus;
            selectedLanguageId = this.this$0.getSelectedLanguageId();
            list = this.this$0.languages;
            ((CatalogRootView) this.this$0.getViewState()).openSelectLanguageScreen(selectedLanguageId, list);
        } else if (result instanceof Result.Error) {
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            ((CatalogRootView) this.this$0.getViewState()).showToast(error.getMessage(resourceManager));
        }
    }
}
