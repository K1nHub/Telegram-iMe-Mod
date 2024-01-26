package com.iMe.storage.data.datasource.base;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: DataSourceFactory.kt */
/* loaded from: classes3.dex */
public interface DataSourceFactory<P, R> {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: DataSourceFactory.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final String unsupportedDataSource(String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            return name + " data source is not supported yet";
        }
    }
}
