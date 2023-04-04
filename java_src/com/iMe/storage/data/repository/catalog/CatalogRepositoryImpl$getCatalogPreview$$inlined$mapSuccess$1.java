package com.iMe.storage.data.repository.catalog;

import com.iMe.storage.data.mapper.catalog.CategoriesPreviewsCursoredMappingKt;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.catalog.CategoriesPreviewsCursoredResponse;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.catalog.CategoriesPreviewsCursored;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class CatalogRepositoryImpl$getCatalogPreview$$inlined$mapSuccess$1 extends Lambda implements Function1<ApiBaseResponse<CategoriesPreviewsCursoredResponse>, Result<? extends CategoriesPreviewsCursored>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogRepositoryImpl$getCatalogPreview$$inlined$mapSuccess$1(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<CategoriesPreviewsCursored> invoke(ApiBaseResponse<CategoriesPreviewsCursoredResponse> response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
        }
        return Result.Companion.success(CategoriesPreviewsCursoredMappingKt.mapToDomain(response.getPayload()));
    }
}
