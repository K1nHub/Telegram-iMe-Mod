package com.iMe.manager.common;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p044ui.Components.ImageUpdater;
/* compiled from: MediaEditManager.kt */
/* loaded from: classes3.dex */
final class MediaEditManager$imageUpdater$2 extends Lambda implements Function0<ImageUpdater> {
    public static final MediaEditManager$imageUpdater$2 INSTANCE = new MediaEditManager$imageUpdater$2();

    MediaEditManager$imageUpdater$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final ImageUpdater invoke() {
        return new ImageUpdater(true, 0, false);
    }
}
