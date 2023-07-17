package com.iMe.storage.data.repository.catalog;

import com.iMe.storage.data.mapper.catalog.CampaignsCursoredMappingKt;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.catalog.CampaignsCursoredResponse;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.catalog.CampaignsCursored;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* renamed from: com.iMe.storage.data.repository.catalog.CatalogRepositoryImpl$getCampaignsByCategoryId$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1866x5d040d4b extends Lambda implements Function1<ApiBaseResponse<CampaignsCursoredResponse>, Result<? extends CampaignsCursored>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1866x5d040d4b(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<CampaignsCursored> invoke(ApiBaseResponse<CampaignsCursoredResponse> response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
        }
        return Result.Companion.success(CampaignsCursoredMappingKt.mapToDomain(response.getPayload()));
    }
}
