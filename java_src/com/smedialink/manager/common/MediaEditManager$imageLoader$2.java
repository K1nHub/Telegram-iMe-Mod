package com.smedialink.manager.common;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.ImageLoader;
/* compiled from: MediaEditManager.kt */
/* loaded from: classes3.dex */
final class MediaEditManager$imageLoader$2 extends Lambda implements Function0<ImageLoader> {
    public static final MediaEditManager$imageLoader$2 INSTANCE = new MediaEditManager$imageLoader$2();

    MediaEditManager$imageLoader$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final ImageLoader invoke() {
        return ImageLoader.getInstance();
    }
}
