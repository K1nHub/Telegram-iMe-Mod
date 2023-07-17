package com.iMe.storage.domain.model.common;

import com.iMe.storage.domain.model.common.EnvironmentInformation;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: EnvironmentInformation.kt */
/* loaded from: classes3.dex */
final class EnvironmentInformation$Companion$availableEnvironments$2 extends Lambda implements Function0<List<? extends EnvironmentInformation>> {
    public static final EnvironmentInformation$Companion$availableEnvironments$2 INSTANCE = new EnvironmentInformation$Companion$availableEnvironments$2();

    EnvironmentInformation$Companion$availableEnvironments$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends EnvironmentInformation> invoke() {
        List<? extends EnvironmentInformation> listOfNotNull;
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull((Object[]) new EnvironmentInformation[]{EnvironmentInformation.Production.INSTANCE, EnvironmentInformation.Stage.INSTANCE, EnvironmentInformation.Development.INSTANCE});
        return listOfNotNull;
    }
}
