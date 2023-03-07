package com.smedialink.storage.data.repository.catalog;

import com.smedialink.storage.data.locale.p027db.dao.minor.catalog.CatalogCategoryDao;
import com.smedialink.storage.data.locale.p027db.dao.minor.catalog.CatalogLanguageDao;
import com.smedialink.storage.data.locale.p027db.model.catalog.CatalogCategoryDb;
import com.smedialink.storage.data.locale.p027db.model.catalog.CatalogLanguageDb;
import com.smedialink.storage.data.mapper.catalog.CampaignsCursoredMappingKt;
import com.smedialink.storage.data.mapper.catalog.CategoriesPreviewsCursoredMappingKt;
import com.smedialink.storage.data.mapper.catalog.ChannelCategoryMappingKt;
import com.smedialink.storage.data.mapper.catalog.ChannelLanguageMappingKt;
import com.smedialink.storage.data.network.api.own.CatalogApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.catalog.CampaignsCursoredResponse;
import com.smedialink.storage.data.network.model.response.catalog.CatalogLanguageResponse;
import com.smedialink.storage.data.network.model.response.catalog.CategoriesPreviewsCursoredResponse;
import com.smedialink.storage.data.network.model.response.catalog.CategoryWithCounterResponse;
import com.smedialink.storage.data.utils.extentions.DateExtKt;
import com.smedialink.storage.data.utils.extentions.RxExtKt$handleError$1;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.catalog.CampaignsCursored;
import com.smedialink.storage.domain.model.catalog.CatalogLanguage;
import com.smedialink.storage.domain.model.catalog.CategoriesPreviewsCursored;
import com.smedialink.storage.domain.model.catalog.CategoryWithCounter;
import com.smedialink.storage.domain.model.catalog.ChatType;
import com.smedialink.storage.domain.repository.catalog.CatalogRepository;
import com.smedialink.storage.domain.storage.PreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Completable;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CatalogRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class CatalogRepositoryImpl implements CatalogRepository {
    private final CatalogApi catalogApi;
    private final CatalogCategoryDao catalogCategoryDao;
    private final CatalogLanguageDao catalogLanguageDao;
    private final ApiErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final PreferenceHelper preferenceHelper;
    private final SchedulersProvider schedulersProvider;

    public CatalogRepositoryImpl(CatalogApi catalogApi, CatalogCategoryDao catalogCategoryDao, CatalogLanguageDao catalogLanguageDao, ApiErrorHandler errorHandler, FirebaseFunctionsErrorHandler firebaseErrorHandler, PreferenceHelper preferenceHelper, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(catalogApi, "catalogApi");
        Intrinsics.checkNotNullParameter(catalogCategoryDao, "catalogCategoryDao");
        Intrinsics.checkNotNullParameter(catalogLanguageDao, "catalogLanguageDao");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(preferenceHelper, "preferenceHelper");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.catalogApi = catalogApi;
        this.catalogCategoryDao = catalogCategoryDao;
        this.catalogLanguageDao = catalogLanguageDao;
        this.errorHandler = errorHandler;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.preferenceHelper = preferenceHelper;
        this.schedulersProvider = schedulersProvider;
    }

    @Override // com.smedialink.storage.domain.repository.catalog.CatalogRepository
    public Observable<Result<List<CatalogLanguage>>> getLanguages(boolean z) {
        if (DateExtKt.isDayAgo(this.preferenceHelper.getCatalogLanguagesLastUpdateTime())) {
            Observable<ApiBaseResponse<List<CatalogLanguageResponse>>> languages = this.catalogApi.getLanguages();
            final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
            Observable<R> flatMap = languages.flatMap(new Function() { // from class: com.smedialink.storage.data.repository.catalog.CatalogRepositoryImpl$getLanguages$$inlined$flatMapSuccess$1
                /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+Lcom/smedialink/storage/domain/model/Result<TR;>;>; */
                @Override // io.reactivex.functions.Function
                public final ObservableSource apply(ApiBaseResponse response) {
                    PreferenceHelper preferenceHelper;
                    int collectionSizeOrDefault;
                    CatalogLanguageDao catalogLanguageDao;
                    int collectionSizeOrDefault2;
                    SchedulersProvider schedulersProvider;
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (response.isSuccess()) {
                        preferenceHelper = this.preferenceHelper;
                        preferenceHelper.setCatalogLanguagesLastUpdateTime(DateExtKt.now());
                        Iterable<CatalogLanguageResponse> iterable = (Iterable) response.getPayload();
                        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
                        ArrayList<CatalogLanguage> arrayList = new ArrayList(collectionSizeOrDefault);
                        for (CatalogLanguageResponse catalogLanguageResponse : iterable) {
                            arrayList.add(ChannelLanguageMappingKt.mapToDomain(catalogLanguageResponse));
                        }
                        catalogLanguageDao = this.catalogLanguageDao;
                        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
                        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
                        for (CatalogLanguage catalogLanguage : arrayList) {
                            arrayList2.add(ChannelLanguageMappingKt.mapToDb(catalogLanguage));
                        }
                        Completable rxInsert = catalogLanguageDao.rxInsert((List) arrayList2);
                        Observable just = Observable.just(arrayList);
                        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                        Observable<T> andThen = rxInsert.andThen(just);
                        schedulersProvider = this.schedulersProvider;
                        Observable<T> subscribeOn = andThen.subscribeOn(schedulersProvider.mo708io());
                        Intrinsics.checkNotNullExpressionValue(subscribeOn, "catalogLanguageDao\n     …(schedulersProvider.io())");
                        return subscribeOn.map(new Function() { // from class: com.smedialink.storage.data.repository.catalog.CatalogRepositoryImpl$getLanguages$$inlined$flatMapSuccess$1.1
                            @Override // io.reactivex.functions.Function
                            public final Result<R> apply(R it) {
                                Intrinsics.checkNotNullParameter(it, "it");
                                return Result.Companion.success(it);
                            }

                            /* JADX WARN: Multi-variable type inference failed */
                            @Override // io.reactivex.functions.Function
                            public /* bridge */ /* synthetic */ Object apply(Object obj) {
                                return apply((C16971<T, R>) obj);
                            }
                        });
                    }
                    Observable just2 = Observable.just(Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null));
                    Intrinsics.checkNotNullExpressionValue(just2, "just(this)");
                    return just2;
                }
            });
            Intrinsics.checkNotNullExpressionValue(flatMap, "errorHandler: FirebaseFu…R>().toObservable()\n    }");
            Observable<Result<List<CatalogLanguage>>> onErrorReturn = flatMap.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
            Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
            return onErrorReturn;
        }
        Observable<R> flatMap2 = this.catalogLanguageDao.getLanguages().toObservable().flatMap(new Function() { // from class: com.smedialink.storage.data.repository.catalog.CatalogRepositoryImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource m1354getLanguages$lambda4;
                m1354getLanguages$lambda4 = CatalogRepositoryImpl.m1354getLanguages$lambda4(CatalogRepositoryImpl.this, (List) obj);
                return m1354getLanguages$lambda4;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap2, "catalogLanguageDao\n     …                        }");
        Observable<Result<List<CatalogLanguage>>> onErrorReturn2 = flatMap2.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn2, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getLanguages$lambda-4  reason: not valid java name */
    public static final ObservableSource m1354getLanguages$lambda4(CatalogRepositoryImpl this$0, List entities) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(entities, "entities");
        if (entities.isEmpty()) {
            return this$0.getLanguages(true).subscribeOn(this$0.schedulersProvider.mo708io());
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(entities, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it = entities.iterator();
        while (it.hasNext()) {
            arrayList.add(ChannelLanguageMappingKt.mapToDomain((CatalogLanguageDb) it.next()));
        }
        Observable just = Observable.just(Result.Companion.success(arrayList));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    @Override // com.smedialink.storage.domain.repository.catalog.CatalogRepository
    public Observable<Result<List<CategoryWithCounter>>> getCategories(ChatType chatType, boolean z) {
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        Observable<ApiBaseResponse<List<CategoryWithCounterResponse>>> subscribeOn = this.catalogApi.getCategories(chatType.name(), this.preferenceHelper.getCatalogSelectedLanguageId()).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "catalogApi\n             …(schedulersProvider.io())");
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable flatMap = subscribeOn.flatMap(new Function() { // from class: com.smedialink.storage.data.repository.catalog.CatalogRepositoryImpl$getCategories$$inlined$flatMapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+Lcom/smedialink/storage/domain/model/Result<TR;>;>; */
            @Override // io.reactivex.functions.Function
            public final ObservableSource apply(ApiBaseResponse response) {
                int collectionSizeOrDefault;
                CatalogCategoryDao catalogCategoryDao;
                CatalogCategoryDao catalogCategoryDao2;
                int collectionSizeOrDefault2;
                SchedulersProvider schedulersProvider;
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    Observable just = Observable.just(Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null));
                    Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                    return just;
                }
                Iterable<CategoryWithCounterResponse> iterable = (Iterable) response.getPayload();
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
                ArrayList<CategoryWithCounter> arrayList = new ArrayList(collectionSizeOrDefault);
                for (CategoryWithCounterResponse categoryWithCounterResponse : iterable) {
                    arrayList.add(ChannelCategoryMappingKt.mapToDomain(categoryWithCounterResponse));
                }
                catalogCategoryDao = this.catalogCategoryDao;
                Completable rxDeleteCategories = catalogCategoryDao.rxDeleteCategories();
                catalogCategoryDao2 = this.catalogCategoryDao;
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
                ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
                for (CategoryWithCounter categoryWithCounter : arrayList) {
                    arrayList2.add(ChannelCategoryMappingKt.mapToDb(categoryWithCounter));
                }
                Completable andThen = rxDeleteCategories.andThen(catalogCategoryDao2.rxInsert((List) arrayList2));
                schedulersProvider = this.schedulersProvider;
                Completable subscribeOn2 = andThen.subscribeOn(schedulersProvider.mo708io());
                Observable just2 = Observable.just(arrayList);
                Intrinsics.checkNotNullExpressionValue(just2, "just(this)");
                Observable<T> andThen2 = subscribeOn2.andThen(just2);
                Intrinsics.checkNotNullExpressionValue(andThen2, "catalogCategoryDao\n     …ategories.toObservable())");
                return andThen2.map(new Function() { // from class: com.smedialink.storage.data.repository.catalog.CatalogRepositoryImpl$getCategories$$inlined$flatMapSuccess$1.1
                    @Override // io.reactivex.functions.Function
                    public final Result<R> apply(R it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        return Result.Companion.success(it);
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // io.reactivex.functions.Function
                    public /* bridge */ /* synthetic */ Object apply(Object obj) {
                        return apply((C16961<T, R>) obj);
                    }
                });
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "errorHandler: FirebaseFu…R>().toObservable()\n    }");
        if (!z) {
            flatMap = Observable.concat(this.catalogCategoryDao.getCategories().toObservable().onErrorResumeNext(Observable.empty()).map(CatalogRepositoryImpl$$ExternalSyntheticLambda1.INSTANCE), flatMap);
            Intrinsics.checkNotNullExpressionValue(flatMap, "{\n            Observable…e\n            )\n        }");
        }
        Observable<Result<List<CategoryWithCounter>>> onErrorReturn = flatMap.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.catalog.CatalogRepository
    public Observable<Result<CategoriesPreviewsCursored>> getCatalogPreview(ChatType chatType, String str) {
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        Observable catalogPreview$default = CatalogApi.DefaultImpls.getCatalogPreview$default(this.catalogApi, chatType.name(), str, null, null, this.preferenceHelper.getCatalogSelectedLanguageId(), 12, null);
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable map = catalogPreview$default.map(new Function() { // from class: com.smedialink.storage.data.repository.catalog.CatalogRepositoryImpl$getCatalogPreview$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(CategoriesPreviewsCursoredMappingKt.mapToDomain((CategoriesPreviewsCursoredResponse) response.getPayload()));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<CategoriesPreviewsCursored>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.catalog.CatalogRepository
    public Observable<Result<CampaignsCursored>> getAllCampaigns(ChatType chatType, String str) {
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        Observable allCampaigns$default = CatalogApi.DefaultImpls.getAllCampaigns$default(this.catalogApi, chatType.name(), str, null, this.preferenceHelper.getCatalogSelectedLanguageId(), 4, null);
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable map = allCampaigns$default.map(new Function() { // from class: com.smedialink.storage.data.repository.catalog.CatalogRepositoryImpl$getAllCampaigns$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(CampaignsCursoredMappingKt.mapToDomain((CampaignsCursoredResponse) response.getPayload()));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<CampaignsCursored>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.catalog.CatalogRepository
    public Observable<Result<CampaignsCursored>> getCampaignsByCategoryId(long j, ChatType chatType, String str) {
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        Observable campaignsByCategoryId$default = CatalogApi.DefaultImpls.getCampaignsByCategoryId$default(this.catalogApi, j, chatType.name(), str, null, this.preferenceHelper.getCatalogSelectedLanguageId(), 8, null);
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable map = campaignsByCategoryId$default.map(new Function() { // from class: com.smedialink.storage.data.repository.catalog.CatalogRepositoryImpl$getCampaignsByCategoryId$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(CampaignsCursoredMappingKt.mapToDomain((CampaignsCursoredResponse) response.getPayload()));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<CampaignsCursored>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getCategories$lambda-9  reason: not valid java name */
    public static final Result m1353getCategories$lambda9(List categories) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(categories, "categories");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(categories, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it = categories.iterator();
        while (it.hasNext()) {
            arrayList.add(ChannelCategoryMappingKt.mapToDomain((CatalogCategoryDb) it.next()));
        }
        return Result.Companion.success(arrayList);
    }
}
