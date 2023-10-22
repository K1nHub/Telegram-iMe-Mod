package com.iMe.storage.data.repository.catalog;

import com.iMe.storage.data.locale.p026db.dao.minor.catalog.CatalogCategoryDao;
import com.iMe.storage.data.locale.p026db.dao.minor.catalog.CatalogLanguageDao;
import com.iMe.storage.data.locale.p026db.model.catalog.CatalogCategoryDb;
import com.iMe.storage.data.locale.p026db.model.catalog.CatalogLanguageDb;
import com.iMe.storage.data.mapper.catalog.CampaignsCursoredMappingKt;
import com.iMe.storage.data.mapper.catalog.CategoriesPreviewsCursoredMappingKt;
import com.iMe.storage.data.mapper.catalog.ChannelCategoryMappingKt;
import com.iMe.storage.data.mapper.catalog.ChannelLanguageMappingKt;
import com.iMe.storage.data.network.api.own.CatalogApi;
import com.iMe.storage.data.network.handlers.ErrorHandler;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.catalog.CampaignsCursoredResponse;
import com.iMe.storage.data.network.model.response.catalog.CatalogLanguageResponse;
import com.iMe.storage.data.network.model.response.catalog.CategoriesPreviewsCursoredResponse;
import com.iMe.storage.data.network.model.response.catalog.CategoryWithCounterResponse;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.catalog.CampaignsCursored;
import com.iMe.storage.domain.model.catalog.CatalogLanguage;
import com.iMe.storage.domain.model.catalog.CategoriesPreviewsCursored;
import com.iMe.storage.domain.model.catalog.CategoryWithCounter;
import com.iMe.storage.domain.model.catalog.ChatType;
import com.iMe.storage.domain.repository.catalog.CatalogRepository;
import com.iMe.storage.domain.storage.PreferenceHelper;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import io.reactivex.Completable;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
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

    @Override // com.iMe.storage.domain.repository.catalog.CatalogRepository
    public Observable<Result<List<CatalogLanguage>>> getLanguages(boolean z) {
        if (DateExtKt.isDayAgo(this.preferenceHelper.getCatalogLanguagesLastUpdateTime())) {
            Observable<ApiBaseResponse<List<CatalogLanguageResponse>>> languages = this.catalogApi.getLanguages();
            final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
            Observable<R> flatMap = languages.flatMap(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<List<? extends CatalogLanguageResponse>>, ObservableSource<? extends Result<? extends List<? extends CatalogLanguage>>>>() { // from class: com.iMe.storage.data.repository.catalog.CatalogRepositoryImpl$getLanguages$$inlined$flatMapSuccess$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
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
                        Observable just = Observable.just(Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null));
                        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                        return just;
                    }
                    preferenceHelper = this.preferenceHelper;
                    preferenceHelper.setCatalogLanguagesLastUpdateTime(DateExtKt.now());
                    List<? extends CatalogLanguageResponse> payload = response.getPayload();
                    collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(payload, 10);
                    ArrayList<CatalogLanguage> arrayList = new ArrayList(collectionSizeOrDefault);
                    for (CatalogLanguageResponse catalogLanguageResponse : payload) {
                        arrayList.add(ChannelLanguageMappingKt.mapToDomain(catalogLanguageResponse));
                    }
                    catalogLanguageDao = this.catalogLanguageDao;
                    collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
                    ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
                    for (CatalogLanguage catalogLanguage : arrayList) {
                        arrayList2.add(ChannelLanguageMappingKt.mapToDb(catalogLanguage));
                    }
                    Completable rxInsert = catalogLanguageDao.rxInsert((List) arrayList2);
                    Observable just2 = Observable.just(arrayList);
                    Intrinsics.checkNotNullExpressionValue(just2, "just(this)");
                    Observable andThen = rxInsert.andThen(just2);
                    schedulersProvider = this.schedulersProvider;
                    Observable subscribeOn = andThen.subscribeOn(schedulersProvider.mo1010io());
                    Intrinsics.checkNotNullExpressionValue(subscribeOn, "catalogLanguageDao\n     …(schedulersProvider.io())");
                    return subscribeOn.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<List<? extends CatalogLanguage>, Result<? extends List<? extends CatalogLanguage>>>() { // from class: com.iMe.storage.data.repository.catalog.CatalogRepositoryImpl$getLanguages$$inlined$flatMapSuccess$1.1
                        @Override // kotlin.jvm.functions.Function1
                        public final Result<? extends List<? extends CatalogLanguage>> invoke(List<? extends CatalogLanguage> it) {
                            Intrinsics.checkNotNullParameter(it, "it");
                            return Result.Companion.success(it);
                        }
                    }));
                }
            }));
            Intrinsics.checkNotNullExpressionValue(flatMap, "errorHandler: FirebaseFu…R>().toObservable()\n    }");
            final ApiErrorHandler apiErrorHandler = this.errorHandler;
            Observable<Result<List<CatalogLanguage>>> onErrorReturn = flatMap.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends List<? extends CatalogLanguage>>>() { // from class: com.iMe.storage.data.repository.catalog.CatalogRepositoryImpl$getLanguages$$inlined$handleError$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Result<List<? extends CatalogLanguage>> invoke(Throwable it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
                }
            }));
            Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
            return onErrorReturn;
        }
        Observable<List<CatalogLanguageDb>> observable = this.catalogLanguageDao.getLanguages().toObservable();
        final Function1<List<? extends CatalogLanguageDb>, ObservableSource<? extends Result<? extends List<? extends CatalogLanguage>>>> function1 = new Function1<List<? extends CatalogLanguageDb>, ObservableSource<? extends Result<? extends List<? extends CatalogLanguage>>>>() { // from class: com.iMe.storage.data.repository.catalog.CatalogRepositoryImpl$getLanguages$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ ObservableSource<? extends Result<? extends List<? extends CatalogLanguage>>> invoke(List<? extends CatalogLanguageDb> list) {
                return invoke2((List<CatalogLanguageDb>) list);
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final ObservableSource<? extends Result<List<CatalogLanguage>>> invoke2(List<CatalogLanguageDb> entities) {
                int collectionSizeOrDefault;
                SchedulersProvider schedulersProvider;
                Intrinsics.checkNotNullParameter(entities, "entities");
                if (entities.isEmpty()) {
                    Observable<Result<List<CatalogLanguage>>> languages2 = CatalogRepositoryImpl.this.getLanguages(true);
                    schedulersProvider = CatalogRepositoryImpl.this.schedulersProvider;
                    return languages2.subscribeOn(schedulersProvider.mo1010io());
                }
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(entities, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (CatalogLanguageDb catalogLanguageDb : entities) {
                    arrayList.add(ChannelLanguageMappingKt.mapToDomain(catalogLanguageDb));
                }
                Observable just = Observable.just(Result.Companion.success(arrayList));
                Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                return just;
            }
        };
        Observable<R> flatMap2 = observable.flatMap(new Function() { // from class: com.iMe.storage.data.repository.catalog.CatalogRepositoryImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource languages$lambda$3;
                languages$lambda$3 = CatalogRepositoryImpl.getLanguages$lambda$3(Function1.this, obj);
                return languages$lambda$3;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap2, "override fun getLanguage…r(errorHandler)\n        }");
        final ApiErrorHandler apiErrorHandler2 = this.errorHandler;
        Observable<Result<List<CatalogLanguage>>> onErrorReturn2 = flatMap2.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends List<? extends CatalogLanguage>>>() { // from class: com.iMe.storage.data.repository.catalog.CatalogRepositoryImpl$getLanguages$$inlined$handleError$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends CatalogLanguage>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn2, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource getLanguages$lambda$3(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.repository.catalog.CatalogRepository
    public Observable<Result<List<CategoryWithCounter>>> getCategories(ChatType chatType, boolean z) {
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        Observable<ApiBaseResponse<List<CategoryWithCounterResponse>>> subscribeOn = this.catalogApi.getCategories(chatType.name(), this.preferenceHelper.getCatalogSelectedLanguageId()).subscribeOn(this.schedulersProvider.mo1010io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "catalogApi\n            .…(schedulersProvider.io())");
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable flatMap = subscribeOn.flatMap(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<List<? extends CategoryWithCounterResponse>>, ObservableSource<? extends Result<? extends List<? extends CategoryWithCounter>>>>() { // from class: com.iMe.storage.data.repository.catalog.CatalogRepositoryImpl$getCategories$$inlined$flatMapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
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
                    Observable just = Observable.just(Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null));
                    Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                    return just;
                }
                List<? extends CategoryWithCounterResponse> payload = response.getPayload();
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(payload, 10);
                ArrayList<CategoryWithCounter> arrayList = new ArrayList(collectionSizeOrDefault);
                for (CategoryWithCounterResponse categoryWithCounterResponse : payload) {
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
                Completable subscribeOn2 = andThen.subscribeOn(schedulersProvider.mo1010io());
                Observable just2 = Observable.just(arrayList);
                Intrinsics.checkNotNullExpressionValue(just2, "just(this)");
                Observable andThen2 = subscribeOn2.andThen(just2);
                Intrinsics.checkNotNullExpressionValue(andThen2, "catalogCategoryDao\n     …ategories.toObservable())");
                return andThen2.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<List<? extends CategoryWithCounter>, Result<? extends List<? extends CategoryWithCounter>>>() { // from class: com.iMe.storage.data.repository.catalog.CatalogRepositoryImpl$getCategories$$inlined$flatMapSuccess$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final Result<? extends List<? extends CategoryWithCounter>> invoke(List<? extends CategoryWithCounter> it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        return Result.Companion.success(it);
                    }
                }));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "errorHandler: FirebaseFu…R>().toObservable()\n    }");
        if (!z) {
            Observable<List<CatalogCategoryDb>> onErrorResumeNext = this.catalogCategoryDao.getCategories().toObservable().onErrorResumeNext(Observable.empty());
            final CatalogRepositoryImpl$getCategories$1 catalogRepositoryImpl$getCategories$1 = new Function1<List<? extends CatalogCategoryDb>, Result<? extends List<? extends CategoryWithCounter>>>() { // from class: com.iMe.storage.data.repository.catalog.CatalogRepositoryImpl$getCategories$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Result<? extends List<? extends CategoryWithCounter>> invoke(List<? extends CatalogCategoryDb> list) {
                    return invoke2((List<CatalogCategoryDb>) list);
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final Result<List<CategoryWithCounter>> invoke2(List<CatalogCategoryDb> categories) {
                    int collectionSizeOrDefault;
                    Intrinsics.checkNotNullParameter(categories, "categories");
                    collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(categories, 10);
                    ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                    for (CatalogCategoryDb catalogCategoryDb : categories) {
                        arrayList.add(ChannelCategoryMappingKt.mapToDomain(catalogCategoryDb));
                    }
                    return Result.Companion.success(arrayList);
                }
            };
            flatMap = Observable.concat(onErrorResumeNext.map(new Function() { // from class: com.iMe.storage.data.repository.catalog.CatalogRepositoryImpl$$ExternalSyntheticLambda1
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    Result categories$lambda$7;
                    categories$lambda$7 = CatalogRepositoryImpl.getCategories$lambda$7(Function1.this, obj);
                    return categories$lambda$7;
                }
            }), flatMap);
            Intrinsics.checkNotNullExpressionValue(flatMap, "{\n            Observable…e\n            )\n        }");
        }
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<List<CategoryWithCounter>>> onErrorReturn = flatMap.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends List<? extends CategoryWithCounter>>>() { // from class: com.iMe.storage.data.repository.catalog.CatalogRepositoryImpl$getCategories$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends CategoryWithCounter>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result getCategories$lambda$7(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.repository.catalog.CatalogRepository
    public Observable<Result<CategoriesPreviewsCursored>> getCatalogPreview(ChatType chatType, String str) {
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        Observable catalogPreview$default = CatalogApi.CC.getCatalogPreview$default(this.catalogApi, chatType.name(), str, null, null, this.preferenceHelper.getCatalogSelectedLanguageId(), 12, null);
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable map = catalogPreview$default.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<CategoriesPreviewsCursoredResponse>, Result<? extends CategoriesPreviewsCursored>>() { // from class: com.iMe.storage.data.repository.catalog.CatalogRepositoryImpl$getCatalogPreview$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CategoriesPreviewsCursored> invoke(ApiBaseResponse<CategoriesPreviewsCursoredResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(CategoriesPreviewsCursoredMappingKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<CategoriesPreviewsCursored>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends CategoriesPreviewsCursored>>() { // from class: com.iMe.storage.data.repository.catalog.CatalogRepositoryImpl$getCatalogPreview$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CategoriesPreviewsCursored> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.catalog.CatalogRepository
    public Observable<Result<CampaignsCursored>> getAllCampaigns(ChatType chatType, String str) {
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        Observable allCampaigns$default = CatalogApi.CC.getAllCampaigns$default(this.catalogApi, chatType.name(), str, null, this.preferenceHelper.getCatalogSelectedLanguageId(), 4, null);
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable map = allCampaigns$default.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<CampaignsCursoredResponse>, Result<? extends CampaignsCursored>>() { // from class: com.iMe.storage.data.repository.catalog.CatalogRepositoryImpl$getAllCampaigns$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CampaignsCursored> invoke(ApiBaseResponse<CampaignsCursoredResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(CampaignsCursoredMappingKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<CampaignsCursored>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends CampaignsCursored>>() { // from class: com.iMe.storage.data.repository.catalog.CatalogRepositoryImpl$getAllCampaigns$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CampaignsCursored> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.catalog.CatalogRepository
    public Observable<Result<CampaignsCursored>> getCampaignsByCategoryId(long j, ChatType chatType, String str) {
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        Observable campaignsByCategoryId$default = CatalogApi.CC.getCampaignsByCategoryId$default(this.catalogApi, j, chatType.name(), str, null, this.preferenceHelper.getCatalogSelectedLanguageId(), 8, null);
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable map = campaignsByCategoryId$default.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<CampaignsCursoredResponse>, Result<? extends CampaignsCursored>>() { // from class: com.iMe.storage.data.repository.catalog.CatalogRepositoryImpl$getCampaignsByCategoryId$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CampaignsCursored> invoke(ApiBaseResponse<CampaignsCursoredResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(CampaignsCursoredMappingKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<CampaignsCursored>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends CampaignsCursored>>() { // from class: com.iMe.storage.data.repository.catalog.CatalogRepositoryImpl$getCampaignsByCategoryId$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CampaignsCursored> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
