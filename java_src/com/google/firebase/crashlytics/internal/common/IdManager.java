package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.installations.FirebaseInstallationsApi;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Pattern;
/* loaded from: classes3.dex */
public class IdManager implements InstallIdProvider {
    private final Context appContext;
    private final String appIdentifier;
    private String crashlyticsInstallId;
    private final DataCollectionArbiter dataCollectionArbiter;
    private final FirebaseInstallationsApi firebaseInstallationsApi;
    private final InstallerPackageNameProvider installerPackageNameProvider;
    private static final Pattern ID_PATTERN = Pattern.compile("[^\\p{Alnum}]");
    private static final String FORWARD_SLASH_REGEX = Pattern.quote("/");

    public IdManager(Context context, String str, FirebaseInstallationsApi firebaseInstallationsApi, DataCollectionArbiter dataCollectionArbiter) {
        if (context == null) {
            throw new IllegalArgumentException("appContext must not be null");
        }
        if (str == null) {
            throw new IllegalArgumentException("appIdentifier must not be null");
        }
        this.appContext = context;
        this.appIdentifier = str;
        this.firebaseInstallationsApi = firebaseInstallationsApi;
        this.dataCollectionArbiter = dataCollectionArbiter;
        this.installerPackageNameProvider = new InstallerPackageNameProvider();
    }

    private static String formatId(String str) {
        if (str == null) {
            return null;
        }
        return ID_PATTERN.matcher(str).replaceAll("").toLowerCase(Locale.US);
    }

    @Override // com.google.firebase.crashlytics.internal.common.InstallIdProvider
    public synchronized String getCrashlyticsInstallId() {
        String str = this.crashlyticsInstallId;
        if (str != null) {
            return str;
        }
        Logger.getLogger().m732v("Determining Crashlytics installation ID...");
        SharedPreferences sharedPrefs = CommonUtils.getSharedPrefs(this.appContext);
        String string = sharedPrefs.getString("firebase.installation.id", null);
        Logger logger = Logger.getLogger();
        logger.m732v("Cached Firebase Installation ID: " + string);
        if (this.dataCollectionArbiter.isAutomaticDataCollectionEnabled()) {
            String fetchTrueFid = fetchTrueFid();
            Logger logger2 = Logger.getLogger();
            logger2.m732v("Fetched Firebase Installation ID: " + fetchTrueFid);
            if (fetchTrueFid == null) {
                fetchTrueFid = string == null ? createSyntheticFid() : string;
            }
            if (fetchTrueFid.equals(string)) {
                this.crashlyticsInstallId = readCachedCrashlyticsInstallId(sharedPrefs);
            } else {
                this.crashlyticsInstallId = createAndCacheCrashlyticsInstallId(fetchTrueFid, sharedPrefs);
            }
        } else if (isSyntheticFid(string)) {
            this.crashlyticsInstallId = readCachedCrashlyticsInstallId(sharedPrefs);
        } else {
            this.crashlyticsInstallId = createAndCacheCrashlyticsInstallId(createSyntheticFid(), sharedPrefs);
        }
        if (this.crashlyticsInstallId == null) {
            Logger.getLogger().m730w("Unable to determine Crashlytics Install Id, creating a new one.");
            this.crashlyticsInstallId = createAndCacheCrashlyticsInstallId(createSyntheticFid(), sharedPrefs);
        }
        Logger logger3 = Logger.getLogger();
        logger3.m732v("Crashlytics installation ID: " + this.crashlyticsInstallId);
        return this.crashlyticsInstallId;
    }

    static String createSyntheticFid() {
        return "SYN_" + UUID.randomUUID().toString();
    }

    static boolean isSyntheticFid(String str) {
        return str != null && str.startsWith("SYN_");
    }

    private String readCachedCrashlyticsInstallId(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString("crashlytics.installation.id", null);
    }

    private String fetchTrueFid() {
        try {
            return (String) Utils.awaitEvenIfOnMainThread(this.firebaseInstallationsApi.getId());
        } catch (Exception e) {
            Logger.getLogger().m729w("Failed to retrieve Firebase Installations ID.", e);
            return null;
        }
    }

    private synchronized String createAndCacheCrashlyticsInstallId(String str, SharedPreferences sharedPreferences) {
        String formatId;
        formatId = formatId(UUID.randomUUID().toString());
        Logger logger = Logger.getLogger();
        logger.m732v("Created new Crashlytics installation ID: " + formatId + " for FID: " + str);
        sharedPreferences.edit().putString("crashlytics.installation.id", formatId).putString("firebase.installation.id", str).apply();
        return formatId;
    }

    public String getAppIdentifier() {
        return this.appIdentifier;
    }

    public String getOsDisplayVersionString() {
        return removeForwardSlashesIn(Build.VERSION.RELEASE);
    }

    public String getOsBuildVersionString() {
        return removeForwardSlashesIn(Build.VERSION.INCREMENTAL);
    }

    public String getModelName() {
        return String.format(Locale.US, "%s/%s", removeForwardSlashesIn(Build.MANUFACTURER), removeForwardSlashesIn(Build.MODEL));
    }

    private String removeForwardSlashesIn(String str) {
        return str.replaceAll(FORWARD_SLASH_REGEX, "");
    }

    public String getInstallerPackageName() {
        return this.installerPackageNameProvider.getInstallerPackageName(this.appContext);
    }
}
