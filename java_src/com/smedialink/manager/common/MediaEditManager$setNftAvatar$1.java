package com.smedialink.manager.common;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.ImageLoader;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MediaEditManager.kt */
/* loaded from: classes3.dex */
public final class MediaEditManager$setNftAvatar$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ String $nftTokenUrl;
    final /* synthetic */ MediaEditManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaEditManager$setNftAvatar$1(MediaEditManager mediaEditManager, String str) {
        super(0);
        this.this$0 = mediaEditManager;
        this.$nftTokenUrl = str;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        ImageLoader imageLoader;
        imageLoader = this.this$0.getImageLoader();
        imageLoader.cancelLoadHttpFile(this.$nftTokenUrl);
        this.this$0.loadingFileUrl = null;
    }
}
