package com.iMe.fork.enums;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3630R;
/* compiled from: VideoVoiceCamera.kt */
/* loaded from: classes3.dex */
public enum VideoVoiceCamera {
    FRONT(C3630R.string.settings_interface_video_voice_front_camera, C3630R.string.settings_interface_video_voice_front_camera_short),
    BACK(C3630R.string.settings_interface_video_voice_back_camera, C3630R.string.settings_interface_video_voice_back_camera_short),
    ASK(C3630R.string.settings_interface_video_voice_ask_camera, C3630R.string.settings_interface_video_voice_ask_camera_short);
    
    public static final Companion Companion = new Companion(null);
    private final int shortTextResId;
    private final int textResId;

    public static final VideoVoiceCamera mapNameToEnum(String str) {
        return Companion.mapNameToEnum(str);
    }

    VideoVoiceCamera(int i, int i2) {
        this.textResId = i;
        this.shortTextResId = i2;
    }

    public final int getShortTextResId() {
        return this.shortTextResId;
    }

    public final int getTextResId() {
        return this.textResId;
    }

    /* compiled from: VideoVoiceCamera.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final VideoVoiceCamera mapNameToEnum(String name) {
            VideoVoiceCamera videoVoiceCamera;
            Intrinsics.checkNotNullParameter(name, "name");
            VideoVoiceCamera[] values = VideoVoiceCamera.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    videoVoiceCamera = null;
                    break;
                }
                videoVoiceCamera = values[i];
                if (Intrinsics.areEqual(name, videoVoiceCamera.name())) {
                    break;
                }
                i++;
            }
            return videoVoiceCamera == null ? VideoVoiceCamera.ASK : videoVoiceCamera;
        }
    }
}
