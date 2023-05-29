package com.iMe.storage.data.repository.catalog;

import com.iMe.storage.data.locale.p027db.dao.minor.catalog.CatalogCategoryDao;
import com.iMe.storage.data.mapper.catalog.ChannelCategoryMappingKt;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.catalog.CategoryWithCounterResponse;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.catalog.CategoryWithCounter;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
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
public final class CatalogRepositoryImpl$getCategories$$inlined$flatMapSuccess$1 extends Lambda implements Function1<ApiBaseResponse<List<? extends CategoryWithCounterResponse>>, ObservableSource<? extends Result<? extends List<? extends CategoryWithCounter>>>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;
    final /* synthetic */ CatalogRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogRepositoryImpl$getCategories$$inlined$flatMapSuccess$1(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler, CatalogRepositoryImpl catalogRepositoryImpl) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
        this.this$0 = catalogRepositoryImpl;
    }

    /* compiled from: FirebaseExt.kt */
    /* renamed from: com.iMe.storage.data.repository.catalog.CatalogRepositoryImpl$getCategories$$inlined$flatMapSuccess$1$1 */
    /* loaded from: classes3.dex */
    public static final class C18541 extends Lambda implements Function1<List<? extends CategoryWithCounter>, Result<? extends List<? extends CategoryWithCounter>>> {
        public static final C18541 INSTANCE = new C18541();

        public C18541() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Result<? extends List<? extends CategoryWithCounter>> invoke(List<? extends CategoryWithCounter> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Result.Companion.success(it);
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<List<? extends CategoryWithCounter>>> invoke(ApiBaseResponse<List<? extends CategoryWithCounterResponse>> response) {
        int collectionSizeOrDefault;
        CatalogCategoryDao catalogCategoryDao;
        CatalogCategoryDao catalogCategoryDao2;
        int collectionSizeOrDefault2;
        SchedulersProvider schedulersProvider;
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            Observable just = Observable.just(Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        List<? extends CategoryWithCounterResponse> payload = response.getPayload();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(payload, 10);
        ArrayList<CategoryWithCounter> arrayList = new ArrayList(collectionSizeOrDefault);
        for (CategoryWithCounterResponse categoryWithCounterResponse : payload) {
            arrayList.add(ChannelCategoryMappingKt.mapToDomain(categoryWithCounterResponse));
        }
        catalogCategoryDao = this.this$0.catalogCategoryDao;
        Completable rxDeleteCategories = catalogCategoryDao.rxDeleteCategories();
        catalogCategoryDao2 = this.this$0.catalogCategoryDao;
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        for (CategoryWithCounter categoryWithCounter : arrayList) {
            arrayList2.add(ChannelCategoryMappingKt.mapToDb(categoryWithCounter));
        }
        Completable andThen = rxDeleteCategories.andThen(catalogCategoryDao2.rxInsert((List) arrayList2));
        schedulersProvider = this.this$0.schedulersProvider;
        Completable subscribeOn = andThen.subscribeOn(schedulersProvider.mo699io());
        Observable just2 = Observable.just(arrayList);
        Intrinsics.checkNotNullExpressionValue(just2, "just(this)");
        Observable andThen2 = subscribeOn.andThen(just2);
        Intrinsics.checkNotNullExpressionValue(andThen2, "catalogCategoryDao\n     …ategories.toObservable())");
        return andThen2.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(C18541.INSTANCE));
    }
}
