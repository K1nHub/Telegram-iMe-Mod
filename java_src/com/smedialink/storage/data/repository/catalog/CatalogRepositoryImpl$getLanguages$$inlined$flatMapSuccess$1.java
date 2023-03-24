package com.smedialink.storage.data.repository.catalog;

import com.smedialink.storage.data.locale.p027db.dao.minor.catalog.CatalogLanguageDao;
import com.smedialink.storage.data.mapper.catalog.ChannelLanguageMappingKt;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.catalog.CatalogLanguageResponse;
import com.smedialink.storage.data.utils.extentions.DateExtKt;
import com.smedialink.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.catalog.CatalogLanguage;
import com.smedialink.storage.domain.storage.PreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Completable;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class CatalogRepositoryImpl$getLanguages$$inlined$flatMapSuccess$1 extends Lambda implements Function1<ApiBaseResponse<List<? extends CatalogLanguageResponse>>, ObservableSource<? extends Result<? extends List<? extends CatalogLanguage>>>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;
    final /* synthetic */ CatalogRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogRepositoryImpl$getLanguages$$inlined$flatMapSuccess$1(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler, CatalogRepositoryImpl catalogRepositoryImpl) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
        this.this$0 = catalogRepositoryImpl;
    }

    /* compiled from: FirebaseExt.kt */
    /* renamed from: com.smedialink.storage.data.repository.catalog.CatalogRepositoryImpl$getLanguages$$inlined$flatMapSuccess$1$1 */
    /* loaded from: classes3.dex */
    public static final class C17321 extends Lambda implements Function1<List<? extends CatalogLanguage>, Result<? extends List<? extends CatalogLanguage>>> {
        public static final C17321 INSTANCE = new C17321();

        public C17321() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Result<? extends List<? extends CatalogLanguage>> invoke(List<? extends CatalogLanguage> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Result.Companion.success(it);
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<List<? extends CatalogLanguage>>> invoke(ApiBaseResponse<List<? extends CatalogLanguageResponse>> response) {
        PreferenceHelper preferenceHelper;
        int collectionSizeOrDefault;
        CatalogLanguageDao catalogLanguageDao;
        int collectionSizeOrDefault2;
        SchedulersProvider schedulersProvider;
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            Observable just = Observable.just(Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        preferenceHelper = this.this$0.preferenceHelper;
        preferenceHelper.setCatalogLanguagesLastUpdateTime(DateExtKt.now());
        List<? extends CatalogLanguageResponse> payload = response.getPayload();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(payload, 10);
        ArrayList<CatalogLanguage> arrayList = new ArrayList(collectionSizeOrDefault);
        for (CatalogLanguageResponse catalogLanguageResponse : payload) {
            arrayList.add(ChannelLanguageMappingKt.mapToDomain(catalogLanguageResponse));
        }
        catalogLanguageDao = this.this$0.catalogLanguageDao;
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        for (CatalogLanguage catalogLanguage : arrayList) {
            arrayList2.add(ChannelLanguageMappingKt.mapToDb(catalogLanguage));
        }
        Completable rxInsert = catalogLanguageDao.rxInsert((List) arrayList2);
        Observable just2 = Observable.just(arrayList);
        Intrinsics.checkNotNullExpressionValue(just2, "just(this)");
        Observable andThen = rxInsert.andThen(just2);
        schedulersProvider = this.this$0.schedulersProvider;
        Observable subscribeOn = andThen.subscribeOn(schedulersProvider.mo707io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "catalogLanguageDao\n     …(schedulersProvider.io())");
        return subscribeOn.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(C17321.INSTANCE));
    }
}
