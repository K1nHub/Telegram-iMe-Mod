package org.webrtc.voiceengine;

import android.media.audiofx.AcousticEchoCanceler;
import android.media.audiofx.AudioEffect;
import android.media.audiofx.NoiseSuppressor;
import android.os.Build;
import com.stripe.android.BuildConfig;
import java.util.List;
import java.util.UUID;
import org.telegram.messenger.SharedConfig;
import org.webrtc.Logging;
/* loaded from: classes6.dex */
public class WebRtcAudioEffects {
    private static final UUID AOSP_ACOUSTIC_ECHO_CANCELER = UUID.fromString("bb392ec0-8d4d-11e0-a896-0002a5d5c51b");
    private static final UUID AOSP_NOISE_SUPPRESSOR = UUID.fromString("c06c8400-8e06-11e0-9cb6-0002a5d5c51b");
    private static final boolean DEBUG = false;
    private static final String TAG = "WebRtcAudioEffects";
    private static AudioEffect.Descriptor[] cachedEffects;
    private AcousticEchoCanceler aec;

    /* renamed from: ns */
    private NoiseSuppressor f2116ns;
    private boolean shouldEnableAec;
    private boolean shouldEnableNs;

    public static boolean isAcousticEchoCancelerSupported() {
        return isAcousticEchoCancelerEffectAvailable();
    }

    public static boolean isNoiseSuppressorSupported() {
        return isNoiseSuppressorEffectAvailable();
    }

    public static boolean isAcousticEchoCancelerBlacklisted() {
        List<String> blackListedModelsForAecUsage = WebRtcAudioUtils.getBlackListedModelsForAecUsage();
        String str = Build.MODEL;
        boolean contains = blackListedModelsForAecUsage.contains(str);
        if (contains) {
            Logging.m16w(TAG, str + " is blacklisted for HW AEC usage!");
        }
        return contains;
    }

    public static boolean isNoiseSuppressorBlacklisted() {
        List<String> blackListedModelsForNsUsage = WebRtcAudioUtils.getBlackListedModelsForNsUsage();
        String str = Build.MODEL;
        boolean contains = blackListedModelsForNsUsage.contains(str);
        if (contains) {
            Logging.m16w(TAG, str + " is blacklisted for HW NS usage!");
        }
        return contains;
    }

    private static boolean isAcousticEchoCancelerExcludedByUUID() {
        AudioEffect.Descriptor[] availableEffects;
        if (Build.VERSION.SDK_INT < 18) {
            return false;
        }
        for (AudioEffect.Descriptor descriptor : getAvailableEffects()) {
            if (descriptor.type.equals(AudioEffect.EFFECT_TYPE_AEC) && descriptor.uuid.equals(AOSP_ACOUSTIC_ECHO_CANCELER)) {
                return true;
            }
        }
        return false;
    }

    private static boolean isNoiseSuppressorExcludedByUUID() {
        AudioEffect.Descriptor[] availableEffects;
        if (Build.VERSION.SDK_INT < 18) {
            return false;
        }
        for (AudioEffect.Descriptor descriptor : getAvailableEffects()) {
            if (descriptor.type.equals(AudioEffect.EFFECT_TYPE_NS) && descriptor.uuid.equals(AOSP_NOISE_SUPPRESSOR)) {
                return true;
            }
        }
        return false;
    }

    private static boolean isAcousticEchoCancelerEffectAvailable() {
        if (Build.VERSION.SDK_INT < 18) {
            return false;
        }
        return isEffectTypeAvailable(AudioEffect.EFFECT_TYPE_AEC);
    }

    private static boolean isNoiseSuppressorEffectAvailable() {
        if (Build.VERSION.SDK_INT < 18) {
            return false;
        }
        return isEffectTypeAvailable(AudioEffect.EFFECT_TYPE_NS);
    }

    public static boolean canUseAcousticEchoCanceler() {
        boolean z = (!isAcousticEchoCancelerSupported() || WebRtcAudioUtils.useWebRtcBasedAcousticEchoCanceler() || isAcousticEchoCancelerBlacklisted() || isAcousticEchoCancelerExcludedByUUID()) ? false : true;
        Logging.m20d(TAG, "canUseAcousticEchoCanceler: " + z);
        return z;
    }

    public static boolean canUseNoiseSuppressor() {
        boolean z = (!isNoiseSuppressorSupported() || WebRtcAudioUtils.useWebRtcBasedNoiseSuppressor() || isNoiseSuppressorBlacklisted() || isNoiseSuppressorExcludedByUUID()) ? false : true;
        Logging.m20d(TAG, "canUseNoiseSuppressor: " + z);
        return z;
    }

    public static WebRtcAudioEffects create() {
        return new WebRtcAudioEffects();
    }

    private WebRtcAudioEffects() {
        Logging.m20d(TAG, "ctor" + WebRtcAudioUtils.getThreadInfo());
    }

    public boolean setAEC(boolean z) {
        Logging.m20d(TAG, "setAEC(" + z + ")");
        if (!canUseAcousticEchoCanceler()) {
            Logging.m16w(TAG, "Platform AEC is not supported");
            this.shouldEnableAec = false;
            return false;
        } else if (this.aec != null && z != this.shouldEnableAec) {
            Logging.m19e(TAG, "Platform AEC state can't be modified while recording");
            return false;
        } else {
            this.shouldEnableAec = z;
            return true;
        }
    }

    public boolean setNS(boolean z) {
        Logging.m20d(TAG, "setNS(" + z + ")");
        if (!canUseNoiseSuppressor()) {
            Logging.m16w(TAG, "Platform NS is not supported");
            this.shouldEnableNs = false;
            return false;
        } else if (this.f2116ns != null && z != this.shouldEnableNs) {
            Logging.m19e(TAG, "Platform NS state can't be modified while recording");
            return false;
        } else {
            this.shouldEnableNs = z;
            return true;
        }
    }

    public void enable(int i) {
        Logging.m20d(TAG, "enable(audioSession=" + i + ")");
        boolean z = true;
        assertTrue(this.aec == null);
        assertTrue(this.f2116ns == null);
        if (isAcousticEchoCancelerSupported()) {
            AcousticEchoCanceler create = AcousticEchoCanceler.create(i);
            this.aec = create;
            if (create != null) {
                boolean enabled = create.getEnabled();
                boolean z2 = this.shouldEnableAec && canUseAcousticEchoCanceler() && !SharedConfig.disableVoiceAudioEffects;
                if (this.aec.setEnabled(z2) != 0) {
                    Logging.m19e(TAG, "Failed to set the AcousticEchoCanceler state");
                }
                StringBuilder sb = new StringBuilder();
                sb.append("AcousticEchoCanceler: was ");
                sb.append(enabled ? "enabled" : "disabled");
                sb.append(", enable: ");
                sb.append(z2);
                sb.append(", is now: ");
                sb.append(this.aec.getEnabled() ? "enabled" : "disabled");
                Logging.m20d(TAG, sb.toString());
            } else {
                Logging.m19e(TAG, "Failed to create the AcousticEchoCanceler instance");
            }
        }
        if (isNoiseSuppressorSupported()) {
            NoiseSuppressor create2 = NoiseSuppressor.create(i);
            this.f2116ns = create2;
            if (create2 != null) {
                boolean enabled2 = create2.getEnabled();
                if (!this.shouldEnableNs || !canUseNoiseSuppressor() || SharedConfig.disableVoiceAudioEffects) {
                    z = false;
                }
                if (this.f2116ns.setEnabled(z) != 0) {
                    Logging.m19e(TAG, "Failed to set the NoiseSuppressor state");
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("NoiseSuppressor: was ");
                sb2.append(enabled2 ? "enabled" : "disabled");
                sb2.append(", enable: ");
                sb2.append(z);
                sb2.append(", is now: ");
                sb2.append(this.f2116ns.getEnabled() ? "enabled" : "disabled");
                Logging.m20d(TAG, sb2.toString());
                return;
            }
            Logging.m19e(TAG, "Failed to create the NoiseSuppressor instance");
        }
    }

    public void release() {
        Logging.m20d(TAG, BuildConfig.BUILD_TYPE);
        AcousticEchoCanceler acousticEchoCanceler = this.aec;
        if (acousticEchoCanceler != null) {
            acousticEchoCanceler.release();
            this.aec = null;
        }
        NoiseSuppressor noiseSuppressor = this.f2116ns;
        if (noiseSuppressor != null) {
            noiseSuppressor.release();
            this.f2116ns = null;
        }
    }

    private boolean effectTypeIsVoIP(UUID uuid) {
        if (Build.VERSION.SDK_INT < 18) {
            return false;
        }
        return (AudioEffect.EFFECT_TYPE_AEC.equals(uuid) && isAcousticEchoCancelerSupported()) || (AudioEffect.EFFECT_TYPE_NS.equals(uuid) && isNoiseSuppressorSupported());
    }

    private static void assertTrue(boolean z) {
        if (!z) {
            throw new AssertionError("Expected condition to be true");
        }
    }

    private static AudioEffect.Descriptor[] getAvailableEffects() {
        AudioEffect.Descriptor[] descriptorArr = cachedEffects;
        if (descriptorArr != null) {
            return descriptorArr;
        }
        AudioEffect.Descriptor[] queryEffects = AudioEffect.queryEffects();
        cachedEffects = queryEffects;
        return queryEffects;
    }

    private static boolean isEffectTypeAvailable(UUID uuid) {
        AudioEffect.Descriptor[] availableEffects = getAvailableEffects();
        if (availableEffects == null) {
            return false;
        }
        for (AudioEffect.Descriptor descriptor : availableEffects) {
            if (descriptor.type.equals(uuid)) {
                return true;
            }
        }
        return false;
    }
}
