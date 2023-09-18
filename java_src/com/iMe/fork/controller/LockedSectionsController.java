package com.iMe.fork.controller;

import android.content.SharedPreferences;
import android.util.Base64;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.iMe.common.TelegramPreferenceKeys;
import com.iMe.fork.controller.LockedSectionsController;
import com.iMe.fork.enums.LockedSection;
import java.util.ArrayList;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.BaseController;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.concurrent.ConcurrentMap$EL;
import p033j$.util.function.Function;
/* compiled from: LockedSectionsController.kt */
/* loaded from: classes4.dex */
public final class LockedSectionsController extends BaseController {
    public static final Companion Companion = new Companion(null);
    private static final ConcurrentHashMap<Integer, LockedSectionsController> accountInstances = new ConcurrentHashMap<>(5);
    private final Map<LockedSection, SectionPasscodeData> sectionsPasscodeData;

    public static final LockedSectionsController getInstance(int i) {
        return Companion.getInstance(i);
    }

    public LockedSectionsController(int i) {
        super(i);
        Map<LockedSection, SectionPasscodeData> mutableMapOf;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m103to(LockedSection.ARCHIVE, new SectionPasscodeData(0, null, null, false, false, 0, 0L, 0L, 0, 0, AnalyticsListener.EVENT_DRM_KEYS_LOADED, null)), TuplesKt.m103to(LockedSection.CLOUD, new SectionPasscodeData(0, null, null, false, false, 0, 0L, 0L, 0, 0, AnalyticsListener.EVENT_DRM_KEYS_LOADED, null)));
        this.sectionsPasscodeData = mutableMapOf;
    }

    public final void loadConfig(SharedPreferences preferences) {
        LockedSection[] values;
        byte[] byteArray;
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        for (LockedSection lockedSection : LockedSection.values()) {
            Map<LockedSection, SectionPasscodeData> map = this.sectionsPasscodeData;
            SectionPasscodeData sectionPasscodeData = new SectionPasscodeData(0, null, null, false, false, 0, 0L, 0L, 0, 0, AnalyticsListener.EVENT_DRM_KEYS_LOADED, null);
            sectionPasscodeData.setPasscodeType(preferences.getInt(TelegramPreferenceKeys.User.buildPasscodeTypeKey(lockedSection), TelegramPreferenceKeys.User.Default.passcodeType()));
            String string = preferences.getString(TelegramPreferenceKeys.User.buildPasscodeHashKey(lockedSection), TelegramPreferenceKeys.User.Default.passcodeHash());
            if (string == null) {
                string = "";
            }
            sectionPasscodeData.setPasscodeHash(string);
            String string2 = preferences.getString(TelegramPreferenceKeys.User.buildPasscodeSaltStringKey(lockedSection), TelegramPreferenceKeys.User.Default.passcodeSaltString());
            String str = string2 != null ? string2 : "";
            Intrinsics.checkNotNullExpressionValue(str, "getString(\n             …ants.Symbols.EMPTY_STRING");
            if (str.length() > 0) {
                byteArray = Base64.decode(str, 0);
                Intrinsics.checkNotNullExpressionValue(byteArray, "{\n                      …LT)\n                    }");
            } else {
                byteArray = ArraysKt___ArraysKt.toByteArray(new Byte[0]);
            }
            sectionPasscodeData.setPasscodeSalt(byteArray);
            sectionPasscodeData.setUseFingerprint(preferences.getBoolean(TelegramPreferenceKeys.User.buildUseFingerprintKey(lockedSection), TelegramPreferenceKeys.User.Default.useFingerprint()));
            sectionPasscodeData.setSectionLocked(preferences.getBoolean(TelegramPreferenceKeys.User.buildIsSectionLockedKey(lockedSection), TelegramPreferenceKeys.User.Default.isSectionLocked()));
            sectionPasscodeData.setBadPasscodeTries(preferences.getInt(TelegramPreferenceKeys.User.buildBadPasscodeTriesKey(lockedSection), TelegramPreferenceKeys.User.Default.badPasscodeTries()));
            sectionPasscodeData.setPasscodeRetryInMs(preferences.getLong(TelegramPreferenceKeys.User.buildPasscodeRetryInMsKey(lockedSection), TelegramPreferenceKeys.User.Default.passcodeRetryInMs()));
            sectionPasscodeData.setLastUptimeMillis(preferences.getLong(TelegramPreferenceKeys.User.buildLastUptimeMillisKey(lockedSection), TelegramPreferenceKeys.User.Default.lastUptimeMillis()));
            sectionPasscodeData.setTimeout(preferences.getInt(TelegramPreferenceKeys.User.buildTimeoutKey(lockedSection), TelegramPreferenceKeys.User.Default.timeout()));
            map.put(lockedSection, sectionPasscodeData);
        }
    }

    public final void saveConfig() {
        String passcodeSaltString;
        SharedPreferences.Editor edit = getUserConfig().getPreferencesPublic().edit();
        for (Map.Entry<LockedSection, SectionPasscodeData> entry : this.sectionsPasscodeData.entrySet()) {
            LockedSection key = entry.getKey();
            SectionPasscodeData value = entry.getValue();
            edit.putInt(TelegramPreferenceKeys.User.buildPasscodeTypeKey(key), value.getPasscodeType());
            edit.putString(TelegramPreferenceKeys.User.buildPasscodeHashKey(key), value.getPasscodeHash());
            String buildPasscodeSaltStringKey = TelegramPreferenceKeys.User.buildPasscodeSaltStringKey(key);
            if (!(value.getPasscodeSalt().length == 0)) {
                passcodeSaltString = Base64.encodeToString(value.getPasscodeSalt(), 0);
            } else {
                passcodeSaltString = TelegramPreferenceKeys.User.Default.passcodeSaltString();
            }
            edit.putString(buildPasscodeSaltStringKey, passcodeSaltString);
            edit.putBoolean(TelegramPreferenceKeys.User.buildUseFingerprintKey(key), value.isUseFingerprint());
            edit.putBoolean(TelegramPreferenceKeys.User.buildIsSectionLockedKey(key), value.isSectionLocked());
            edit.putInt(TelegramPreferenceKeys.User.buildBadPasscodeTriesKey(key), value.getBadPasscodeTries());
            edit.putLong(TelegramPreferenceKeys.User.buildPasscodeRetryInMsKey(key), value.getPasscodeRetryInMs());
            edit.putLong(TelegramPreferenceKeys.User.buildLastUptimeMillisKey(key), value.getLastUptimeMillis());
            edit.putInt(TelegramPreferenceKeys.User.buildTimeoutKey(key), value.getTimeout());
        }
        edit.apply();
    }

    public final void cleanup() {
        this.sectionsPasscodeData.clear();
        Map<LockedSection, SectionPasscodeData> map = this.sectionsPasscodeData;
        LockedSection[] values = LockedSection.values();
        ArrayList arrayList = new ArrayList(values.length);
        for (LockedSection lockedSection : values) {
            arrayList.add(TuplesKt.m103to(lockedSection, new SectionPasscodeData(0, null, null, false, false, 0, 0L, 0L, 0, 0, AnalyticsListener.EVENT_DRM_KEYS_LOADED, null)));
        }
        MapsKt__MapsKt.putAll(map, arrayList);
    }

    public final SectionPasscodeData getSectionsPasscodeData(LockedSection lockedSection) {
        return this.sectionsPasscodeData.get(lockedSection);
    }

    /* compiled from: LockedSectionsController.kt */
    /* loaded from: classes4.dex */
    public static final class SectionPasscodeData {
        private int badPasscodeTries;
        private boolean isSectionLocked;
        private boolean isUseFingerprint;
        private int lastAcceptedTime;
        private long lastUptimeMillis;
        private String passcodeHash;
        private long passcodeRetryInMs;
        private byte[] passcodeSalt;
        private int passcodeType;
        private int timeout;

        public SectionPasscodeData() {
            this(0, null, null, false, false, 0, 0L, 0L, 0, 0, AnalyticsListener.EVENT_DRM_KEYS_LOADED, null);
        }

        public SectionPasscodeData(int i, String passcodeHash, byte[] passcodeSalt, boolean z, boolean z2, int i2, long j, long j2, int i3, int i4) {
            Intrinsics.checkNotNullParameter(passcodeHash, "passcodeHash");
            Intrinsics.checkNotNullParameter(passcodeSalt, "passcodeSalt");
            this.passcodeType = i;
            this.passcodeHash = passcodeHash;
            this.passcodeSalt = passcodeSalt;
            this.isUseFingerprint = z;
            this.isSectionLocked = z2;
            this.badPasscodeTries = i2;
            this.passcodeRetryInMs = j;
            this.lastUptimeMillis = j2;
            this.timeout = i3;
            this.lastAcceptedTime = i4;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ SectionPasscodeData(int r14, java.lang.String r15, byte[] r16, boolean r17, boolean r18, int r19, long r20, long r22, int r24, int r25, int r26, kotlin.jvm.internal.DefaultConstructorMarker r27) {
            /*
                r13 = this;
                r0 = r26
                r1 = r0 & 1
                if (r1 == 0) goto Lb
                int r1 = com.iMe.common.TelegramPreferenceKeys.User.Default.passcodeType()
                goto Lc
            Lb:
                r1 = r14
            Lc:
                r2 = r0 & 2
                if (r2 == 0) goto L15
                java.lang.String r2 = com.iMe.common.TelegramPreferenceKeys.User.Default.passcodeHash()
                goto L16
            L15:
                r2 = r15
            L16:
                r3 = r0 & 4
                r4 = 0
                if (r3 == 0) goto L29
                java.lang.String r3 = com.iMe.common.TelegramPreferenceKeys.User.Default.passcodeSaltString()
                byte[] r3 = android.util.Base64.decode(r3, r4)
                java.lang.String r5 = "decode(\n            Tele… Base64.DEFAULT\n        )"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r5)
                goto L2b
            L29:
                r3 = r16
            L2b:
                r5 = r0 & 8
                if (r5 == 0) goto L34
                boolean r5 = com.iMe.common.TelegramPreferenceKeys.User.Default.useFingerprint()
                goto L36
            L34:
                r5 = r17
            L36:
                r6 = r0 & 16
                if (r6 == 0) goto L3f
                boolean r6 = com.iMe.common.TelegramPreferenceKeys.User.Default.isSectionLocked()
                goto L41
            L3f:
                r6 = r18
            L41:
                r7 = r0 & 32
                if (r7 == 0) goto L4a
                int r7 = com.iMe.common.TelegramPreferenceKeys.User.Default.badPasscodeTries()
                goto L4c
            L4a:
                r7 = r19
            L4c:
                r8 = r0 & 64
                if (r8 == 0) goto L55
                long r8 = com.iMe.common.TelegramPreferenceKeys.User.Default.passcodeRetryInMs()
                goto L57
            L55:
                r8 = r20
            L57:
                r10 = r0 & 128(0x80, float:1.794E-43)
                if (r10 == 0) goto L60
                long r10 = com.iMe.common.TelegramPreferenceKeys.User.Default.lastUptimeMillis()
                goto L62
            L60:
                r10 = r22
            L62:
                r12 = r0 & 256(0x100, float:3.59E-43)
                if (r12 == 0) goto L6b
                int r12 = com.iMe.common.TelegramPreferenceKeys.User.Default.timeout()
                goto L6d
            L6b:
                r12 = r24
            L6d:
                r0 = r0 & 512(0x200, float:7.175E-43)
                if (r0 == 0) goto L72
                goto L74
            L72:
                r4 = r25
            L74:
                r14 = r13
                r15 = r1
                r16 = r2
                r17 = r3
                r18 = r5
                r19 = r6
                r20 = r7
                r21 = r8
                r23 = r10
                r25 = r12
                r26 = r4
                r14.<init>(r15, r16, r17, r18, r19, r20, r21, r23, r25, r26)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.iMe.fork.controller.LockedSectionsController.SectionPasscodeData.<init>(int, java.lang.String, byte[], boolean, boolean, int, long, long, int, int, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }

        public final int getPasscodeType() {
            return this.passcodeType;
        }

        public final void setPasscodeType(int i) {
            this.passcodeType = i;
        }

        public final String getPasscodeHash() {
            return this.passcodeHash;
        }

        public final void setPasscodeHash(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.passcodeHash = str;
        }

        public final byte[] getPasscodeSalt() {
            return this.passcodeSalt;
        }

        public final void setPasscodeSalt(byte[] bArr) {
            Intrinsics.checkNotNullParameter(bArr, "<set-?>");
            this.passcodeSalt = bArr;
        }

        public final boolean isUseFingerprint() {
            return this.isUseFingerprint;
        }

        public final void setUseFingerprint(boolean z) {
            this.isUseFingerprint = z;
        }

        public final boolean isSectionLocked() {
            return this.isSectionLocked;
        }

        public final void setSectionLocked(boolean z) {
            this.isSectionLocked = z;
        }

        public final int getBadPasscodeTries() {
            return this.badPasscodeTries;
        }

        public final void setBadPasscodeTries(int i) {
            this.badPasscodeTries = i;
        }

        public final long getPasscodeRetryInMs() {
            return this.passcodeRetryInMs;
        }

        public final void setPasscodeRetryInMs(long j) {
            this.passcodeRetryInMs = j;
        }

        public final long getLastUptimeMillis() {
            return this.lastUptimeMillis;
        }

        public final void setLastUptimeMillis(long j) {
            this.lastUptimeMillis = j;
        }

        public final int getTimeout() {
            return this.timeout;
        }

        public final void setTimeout(int i) {
            this.timeout = i;
        }

        public final int getLastAcceptedTime() {
            return this.lastAcceptedTime;
        }

        public final void setLastAcceptedTime(int i) {
            this.lastAcceptedTime = i;
        }
    }

    /* compiled from: LockedSectionsController.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final LockedSectionsController getInstance$lambda$0(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (LockedSectionsController) tmp0.invoke(obj);
        }

        public final LockedSectionsController getInstance(final int i) {
            ConcurrentHashMap concurrentHashMap = LockedSectionsController.accountInstances;
            Integer valueOf = Integer.valueOf(i);
            final Function1<Integer, LockedSectionsController> function1 = new Function1<Integer, LockedSectionsController>() { // from class: com.iMe.fork.controller.LockedSectionsController$Companion$getInstance$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final LockedSectionsController invoke(Integer it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new LockedSectionsController(i);
                }
            };
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(concurrentHashMap, valueOf, new Function() { // from class: com.iMe.fork.controller.LockedSectionsController$Companion$$ExternalSyntheticLambda0
                @Override // p033j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Function.CC.$default$andThen(this, function);
                }

                @Override // p033j$.util.function.Function
                public final Object apply(Object obj) {
                    LockedSectionsController instance$lambda$0;
                    instance$lambda$0 = LockedSectionsController.Companion.getInstance$lambda$0(Function1.this, obj);
                    return instance$lambda$0;
                }

                @Override // p033j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Function.CC.$default$compose(this, function);
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "accountIndex: Int) = acc…r(accountIndex)\n        }");
            return (LockedSectionsController) computeIfAbsent;
        }
    }
}
