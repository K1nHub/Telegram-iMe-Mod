package com.iMe.storage.data.repository.catalog;

import com.iMe.storage.data.locale.p028db.dao.minor.catalog.CatalogCategoryDao;
import com.iMe.storage.data.locale.p028db.dao.minor.catalog.CatalogLanguageDao;
import com.iMe.storage.data.locale.p028db.model.catalog.CatalogCategoryDb;
import com.iMe.storage.data.locale.p028db.model.catalog.CatalogLanguageDb;
import com.iMe.storage.data.network.api.own.CatalogApi;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
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
import com.iMe.storage.domain.utils.p031rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.util.List;
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
        if (!DateExtKt.isDayAgo(this.preferenceHelper.getCatalogLanguagesLastUpdateTime())) {
            Observable<List<CatalogLanguageDb>> observable = this.catalogLanguageDao.getLanguages().toObservable();
            final CatalogRepositoryImpl$getLanguages$2 catalogRepositoryImpl$getLanguages$2 = new CatalogRepositoryImpl$getLanguages$2(this);
            Observable<R> flatMap = observable.flatMap(new Function() { // from class: com.iMe.storage.data.repository.catalog.CatalogRepositoryImpl$$ExternalSyntheticLambda0
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    ObservableSource languages$lambda$3;
                    languages$lambda$3 = CatalogRepositoryImpl.getLanguages$lambda$3(Function1.this, obj);
                    return languages$lambda$3;
                }
            });
            Intrinsics.checkNotNullExpressionValue(flatMap, "override fun getLanguage…rorHandler)\n            }");
            Observable<Result<List<CatalogLanguage>>> onErrorReturn = flatMap.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new CatalogRepositoryImpl$getLanguages$$inlined$handleError$2(this.errorHandler)));
            Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
            return onErrorReturn;
        }
        Observable<R> flatMap2 = this.catalogApi.getLanguages().flatMap(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new CatalogRepositoryImpl$getLanguages$$inlined$flatMapSuccess$1(this.firebaseErrorHandler, this)));
        Intrinsics.checkNotNullExpressionValue(flatMap2, "errorHandler: FirebaseFu…R>().toObservable()\n    }");
        Observable<Result<List<CatalogLanguage>>> onErrorReturn2 = flatMap2.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new CatalogRepositoryImpl$getLanguages$$inlined$handleError$1(this.errorHandler)));
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
        Observable<ApiBaseResponse<List<CategoryWithCounterResponse>>> subscribeOn = this.catalogApi.getCategories(chatType.name(), this.preferenceHelper.getCatalogSelectedLanguageId()).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "catalogApi\n             …(schedulersProvider.io())");
        Observable flatMap = subscribeOn.flatMap(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new CatalogRepositoryImpl$getCategories$$inlined$flatMapSuccess$1(this.firebaseErrorHandler, this)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "errorHandler: FirebaseFu…R>().toObservable()\n    }");
        if (!z) {
            Observable<List<CatalogCategoryDb>> onErrorResumeNext = this.catalogCategoryDao.getCategories().toObservable().onErrorResumeNext(Observable.empty());
            final CatalogRepositoryImpl$getCategories$1 catalogRepositoryImpl$getCategories$1 = CatalogRepositoryImpl$getCategories$1.INSTANCE;
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
        Observable<Result<List<CategoryWithCounter>>> onErrorReturn = flatMap.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new CatalogRepositoryImpl$getCategories$$inlined$handleError$1(this.errorHandler)));
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
        Observable map = CatalogApi.CC.getCatalogPreview$default(this.catalogApi, chatType.name(), str, null, null, this.preferenceHelper.getCatalogSelectedLanguageId(), 12, null).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new CatalogRepositoryImpl$getCatalogPreview$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<CategoriesPreviewsCursored>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new CatalogRepositoryImpl$getCatalogPreview$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.catalog.CatalogRepository
    public Observable<Result<CampaignsCursored>> getAllCampaigns(ChatType chatType, String str) {
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        Observable map = CatalogApi.CC.getAllCampaigns$default(this.catalogApi, chatType.name(), str, null, this.preferenceHelper.getCatalogSelectedLanguageId(), 4, null).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new CatalogRepositoryImpl$getAllCampaigns$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<CampaignsCursored>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new CatalogRepositoryImpl$getAllCampaigns$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.catalog.CatalogRepository
    public Observable<Result<CampaignsCursored>> getCampaignsByCategoryId(long j, ChatType chatType, String str) {
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        Observable map = CatalogApi.CC.getCampaignsByCategoryId$default(this.catalogApi, j, chatType.name(), str, null, this.preferenceHelper.getCatalogSelectedLanguageId(), 8, null).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1788x5d040d4b(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<CampaignsCursored>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1787x268554b6(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
