package com.chad.library.adapter.base.module;

import com.chad.library.adapter.base.loadmore.BaseLoadMoreView;
import com.chad.library.adapter.base.loadmore.SimpleLoadMoreView;
/* compiled from: LoadMoreModule.kt */
/* loaded from: classes.dex */
public final class LoadMoreModuleConfig {
    private static BaseLoadMoreView defLoadMoreView;

    private LoadMoreModuleConfig() {
    }

    static {
        new LoadMoreModuleConfig();
        defLoadMoreView = new SimpleLoadMoreView();
    }

    public static final BaseLoadMoreView getDefLoadMoreView() {
        return defLoadMoreView;
    }
}
