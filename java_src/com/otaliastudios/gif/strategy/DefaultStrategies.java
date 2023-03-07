package com.otaliastudios.gif.strategy;
/* loaded from: classes3.dex */
public class DefaultStrategies {
    public static DefaultStrategy for720x1280() {
        return DefaultStrategy.exact(720, 1280).bitRate(2000000L).frameRate(30).keyFrameInterval(3.0f).build();
    }
}
