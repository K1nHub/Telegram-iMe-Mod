package com.microsoft.appcenter.crashes;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import com.microsoft.appcenter.AbstractAppCenterService;
import com.microsoft.appcenter.channel.Channel;
import com.microsoft.appcenter.crashes.ingestion.models.ErrorAttachmentLog;
import com.microsoft.appcenter.crashes.ingestion.models.Exception;
import com.microsoft.appcenter.crashes.ingestion.models.HandledErrorLog;
import com.microsoft.appcenter.crashes.ingestion.models.ManagedErrorLog;
import com.microsoft.appcenter.crashes.ingestion.models.StackFrame;
import com.microsoft.appcenter.crashes.ingestion.models.json.ErrorAttachmentLogFactory;
import com.microsoft.appcenter.crashes.ingestion.models.json.HandledErrorLogFactory;
import com.microsoft.appcenter.crashes.ingestion.models.json.ManagedErrorLogFactory;
import com.microsoft.appcenter.crashes.model.ErrorReport;
import com.microsoft.appcenter.crashes.model.NativeException;
import com.microsoft.appcenter.crashes.utils.ErrorLogHelper;
import com.microsoft.appcenter.ingestion.models.Device;
import com.microsoft.appcenter.ingestion.models.Log;
import com.microsoft.appcenter.ingestion.models.json.DefaultLogSerializer;
import com.microsoft.appcenter.ingestion.models.json.LogFactory;
import com.microsoft.appcenter.ingestion.models.json.LogSerializer;
import com.microsoft.appcenter.utils.AppCenterLog;
import com.microsoft.appcenter.utils.DeviceInfoHelper;
import com.microsoft.appcenter.utils.HandlerUtils;
import com.microsoft.appcenter.utils.async.AppCenterFuture;
import com.microsoft.appcenter.utils.context.SessionContext;
import com.microsoft.appcenter.utils.storage.FileManager;
import com.microsoft.appcenter.utils.storage.SharedPreferencesManager;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
/* loaded from: classes4.dex */
public class Crashes extends AbstractAppCenterService {
    private static final CrashesListener DEFAULT_ERROR_REPORTING_LISTENER = new DefaultCrashesListener(null);
    private static Crashes sInstance = null;
    private boolean mAutomaticProcessing = true;
    private Context mContext;
    private CrashesListener mCrashesListener;
    private Device mDevice;
    private final Map<UUID, ErrorLogReport> mErrorReportCache;
    private final Map<String, LogFactory> mFactories;
    private boolean mHasReceivedMemoryWarningInLastSession;
    private long mInitializeTimestamp;
    private LogSerializer mLogSerializer;
    private ComponentCallbacks2 mMemoryWarningListener;
    private boolean mSavedUncaughtException;
    private UncaughtExceptionHandler mUncaughtExceptionHandler;
    private final Map<UUID, ErrorLogReport> mUnprocessedErrorReports;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.microsoft.appcenter.crashes.Crashes$1 */
    /* loaded from: classes4.dex */
    public class RunnableC25831 implements Runnable {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public interface CallbackProcessor {
        void onCallBack(ErrorReport report);
    }

    private static boolean isMemoryRunningLevelWasReceived(int memoryLevel) {
        return memoryLevel == 5 || memoryLevel == 10 || memoryLevel == 15 || memoryLevel == 80;
    }

    @Override // com.microsoft.appcenter.AbstractAppCenterService
    protected String getGroupName() {
        return "groupErrors";
    }

    @Override // com.microsoft.appcenter.AbstractAppCenterService
    protected String getLoggerTag() {
        return "AppCenterCrashes";
    }

    @Override // com.microsoft.appcenter.AppCenterService
    public String getServiceName() {
        return "Crashes";
    }

    @Override // com.microsoft.appcenter.AbstractAppCenterService
    protected int getTriggerCount() {
        return 1;
    }

    private Crashes() {
        HashMap hashMap = new HashMap();
        this.mFactories = hashMap;
        hashMap.put("managedError", ManagedErrorLogFactory.getInstance());
        hashMap.put("handledError", HandledErrorLogFactory.getInstance());
        hashMap.put("errorAttachment", ErrorAttachmentLogFactory.getInstance());
        DefaultLogSerializer defaultLogSerializer = new DefaultLogSerializer();
        this.mLogSerializer = defaultLogSerializer;
        defaultLogSerializer.addLogFactory("managedError", ManagedErrorLogFactory.getInstance());
        this.mLogSerializer.addLogFactory("errorAttachment", ErrorAttachmentLogFactory.getInstance());
        this.mCrashesListener = DEFAULT_ERROR_REPORTING_LISTENER;
        this.mUnprocessedErrorReports = new LinkedHashMap();
        this.mErrorReportCache = new LinkedHashMap();
    }

    public static synchronized Crashes getInstance() {
        Crashes crashes;
        synchronized (Crashes.class) {
            if (sInstance == null) {
                sInstance = new Crashes();
            }
            crashes = sInstance;
        }
        return crashes;
    }

    public static AppCenterFuture<Boolean> isEnabled() {
        return getInstance().isInstanceEnabledAsync();
    }

    @Override // com.microsoft.appcenter.AbstractAppCenterService
    protected synchronized void applyEnabledState(boolean enabled) {
        initialize();
        if (enabled) {
            ComponentCallbacks2 componentCallbacks2 = new ComponentCallbacks2(this) { // from class: com.microsoft.appcenter.crashes.Crashes.5
                @Override // android.content.ComponentCallbacks
                public void onConfigurationChanged(Configuration newConfig) {
                }

                @Override // android.content.ComponentCallbacks2
                public void onTrimMemory(int level) {
                    Crashes.saveMemoryRunningLevel(level);
                }

                @Override // android.content.ComponentCallbacks
                public void onLowMemory() {
                    Crashes.saveMemoryRunningLevel(80);
                }
            };
            this.mMemoryWarningListener = componentCallbacks2;
            this.mContext.registerComponentCallbacks(componentCallbacks2);
        } else {
            File[] listFiles = ErrorLogHelper.getErrorStorageDirectory().listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    AppCenterLog.debug("AppCenterCrashes", "Deleting file " + file);
                    if (!file.delete()) {
                        AppCenterLog.warn("AppCenterCrashes", "Failed to delete file " + file);
                    }
                }
            }
            AppCenterLog.info("AppCenterCrashes", "Deleted crashes local files");
            this.mErrorReportCache.clear();
            this.mContext.unregisterComponentCallbacks(this.mMemoryWarningListener);
            this.mMemoryWarningListener = null;
            SharedPreferencesManager.remove("com.microsoft.appcenter.crashes.memory");
        }
    }

    @Override // com.microsoft.appcenter.AbstractAppCenterService, com.microsoft.appcenter.AppCenterService
    public synchronized void onStarted(Context context, Channel channel, String appSecret, String transmissionTargetToken, boolean startedFromApp) {
        this.mContext = context;
        if (!isInstanceEnabled()) {
            ErrorLogHelper.removeMinidumpFolder();
            AppCenterLog.debug("AppCenterCrashes", "Clean up minidump folder.");
        }
        super.onStarted(context, channel, appSecret, transmissionTargetToken, startedFromApp);
        if (isInstanceEnabled()) {
            processPendingErrors();
            if (this.mErrorReportCache.isEmpty()) {
                ErrorLogHelper.removeLostThrowableFiles();
            }
        }
    }

    @Override // com.microsoft.appcenter.AppCenterService
    public Map<String, LogFactory> getLogFactories() {
        return this.mFactories;
    }

    @Override // com.microsoft.appcenter.AbstractAppCenterService
    protected Channel.GroupListener getChannelListener() {
        return new Channel.GroupListener() { // from class: com.microsoft.appcenter.crashes.Crashes.6
            private void processCallback(final Log log, final CallbackProcessor callbackProcessor) {
                Crashes.this.post(new Runnable() { // from class: com.microsoft.appcenter.crashes.Crashes.6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Log log2 = log;
                        if (log2 instanceof ManagedErrorLog) {
                            ManagedErrorLog managedErrorLog = (ManagedErrorLog) log2;
                            final ErrorReport buildErrorReport = Crashes.this.buildErrorReport(managedErrorLog);
                            UUID id = managedErrorLog.getId();
                            if (buildErrorReport != null) {
                                HandlerUtils.runOnUiThread(new Runnable() { // from class: com.microsoft.appcenter.crashes.Crashes.6.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        callbackProcessor.onCallBack(buildErrorReport);
                                    }
                                });
                                return;
                            }
                            AppCenterLog.warn("AppCenterCrashes", "Cannot find crash report for the error log: " + id);
                        } else if ((log2 instanceof ErrorAttachmentLog) || (log2 instanceof HandledErrorLog)) {
                        } else {
                            AppCenterLog.warn("AppCenterCrashes", "A different type of log comes to crashes: " + log.getClass().getName());
                        }
                    }
                });
            }

            @Override // com.microsoft.appcenter.channel.Channel.GroupListener
            public void onBeforeSending(Log log) {
                processCallback(log, new CallbackProcessor() { // from class: com.microsoft.appcenter.crashes.Crashes.6.2
                    @Override // com.microsoft.appcenter.crashes.Crashes.CallbackProcessor
                    public void onCallBack(ErrorReport report) {
                        Crashes.this.mCrashesListener.onBeforeSending(report);
                    }
                });
            }

            @Override // com.microsoft.appcenter.channel.Channel.GroupListener
            public void onSuccess(Log log) {
                processCallback(log, new CallbackProcessor() { // from class: com.microsoft.appcenter.crashes.Crashes.6.3
                    @Override // com.microsoft.appcenter.crashes.Crashes.CallbackProcessor
                    public void onCallBack(ErrorReport report) {
                        Crashes.this.mCrashesListener.onSendingSucceeded(report);
                    }
                });
            }

            @Override // com.microsoft.appcenter.channel.Channel.GroupListener
            public void onFailure(Log log, final Exception e) {
                processCallback(log, new CallbackProcessor() { // from class: com.microsoft.appcenter.crashes.Crashes.6.4
                    @Override // com.microsoft.appcenter.crashes.Crashes.CallbackProcessor
                    public void onCallBack(ErrorReport report) {
                        Crashes.this.mCrashesListener.onSendingFailed(report, e);
                    }
                });
            }
        };
    }

    synchronized Device getDeviceInfo(Context context) throws DeviceInfoHelper.DeviceInfoException {
        if (this.mDevice == null) {
            this.mDevice = DeviceInfoHelper.getDeviceInfo(context);
        }
        return this.mDevice;
    }

    private void initialize() {
        boolean isInstanceEnabled = isInstanceEnabled();
        this.mInitializeTimestamp = isInstanceEnabled ? System.currentTimeMillis() : -1L;
        if (!isInstanceEnabled) {
            UncaughtExceptionHandler uncaughtExceptionHandler = this.mUncaughtExceptionHandler;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.unregister();
                this.mUncaughtExceptionHandler = null;
                return;
            }
            return;
        }
        UncaughtExceptionHandler uncaughtExceptionHandler2 = new UncaughtExceptionHandler();
        this.mUncaughtExceptionHandler = uncaughtExceptionHandler2;
        uncaughtExceptionHandler2.register();
        processMinidumpFiles();
    }

    private void processMinidumpFiles() {
        File[] newMinidumpFiles;
        for (File file : ErrorLogHelper.getNewMinidumpFiles()) {
            if (!file.isDirectory()) {
                AppCenterLog.debug("AppCenterCrashes", "Found a minidump from a previous SDK version.");
                processSingleMinidump(file, file);
            } else {
                File[] listFiles = file.listFiles(new FilenameFilter(this) { // from class: com.microsoft.appcenter.crashes.Crashes.10
                    @Override // java.io.FilenameFilter
                    public boolean accept(File dir, String filename) {
                        return filename.endsWith(".dmp");
                    }
                });
                if (listFiles != null && listFiles.length != 0) {
                    for (File file2 : listFiles) {
                        processSingleMinidump(file2, file);
                    }
                }
            }
        }
        File lastErrorLogFile = ErrorLogHelper.getLastErrorLogFile();
        while (lastErrorLogFile != null && lastErrorLogFile.length() == 0) {
            AppCenterLog.warn("AppCenterCrashes", "Deleting empty error file: " + lastErrorLogFile);
            lastErrorLogFile.delete();
            lastErrorLogFile = ErrorLogHelper.getLastErrorLogFile();
        }
        if (lastErrorLogFile != null) {
            AppCenterLog.debug("AppCenterCrashes", "Processing crash report for the last session.");
            String read = FileManager.read(lastErrorLogFile);
            if (read == null) {
                AppCenterLog.error("AppCenterCrashes", "Error reading last session error log.");
            } else {
                try {
                    buildErrorReport((ManagedErrorLog) this.mLogSerializer.deserializeLog(read, null));
                    AppCenterLog.debug("AppCenterCrashes", "Processed crash report for the last session.");
                } catch (JSONException e) {
                    AppCenterLog.error("AppCenterCrashes", "Error parsing last session error log.", e);
                }
            }
        }
        ErrorLogHelper.removeStaleMinidumpSubfolders();
    }

    private void processSingleMinidump(File minidumpFile, File minidumpFolder) {
        AppCenterLog.debug("AppCenterCrashes", "Process pending minidump file: " + minidumpFile);
        long lastModified = minidumpFile.lastModified();
        File file = new File(ErrorLogHelper.getPendingMinidumpDirectory(), minidumpFile.getName());
        Exception exception = new Exception();
        exception.setType("minidump");
        exception.setWrapperSdkName("appcenter.ndk");
        exception.setMinidumpFilePath(file.getPath());
        ManagedErrorLog managedErrorLog = new ManagedErrorLog();
        managedErrorLog.setException(exception);
        managedErrorLog.setTimestamp(new Date(lastModified));
        managedErrorLog.setFatal(Boolean.TRUE);
        managedErrorLog.setId(ErrorLogHelper.parseLogFolderUuid(minidumpFolder));
        SessionContext.SessionInfo sessionAt = SessionContext.getInstance().getSessionAt(lastModified);
        if (sessionAt != null && sessionAt.getAppLaunchTimestamp() <= lastModified) {
            managedErrorLog.setAppLaunchTimestamp(new Date(sessionAt.getAppLaunchTimestamp()));
        } else {
            managedErrorLog.setAppLaunchTimestamp(managedErrorLog.getTimestamp());
        }
        managedErrorLog.setProcessId(0);
        managedErrorLog.setProcessName("");
        try {
            String storedUserInfo = ErrorLogHelper.getStoredUserInfo(minidumpFolder);
            Device storedDeviceInfo = ErrorLogHelper.getStoredDeviceInfo(minidumpFolder);
            if (storedDeviceInfo == null) {
                storedDeviceInfo = getDeviceInfo(this.mContext);
                storedDeviceInfo.setWrapperSdkName("appcenter.ndk");
            }
            managedErrorLog.setDevice(storedDeviceInfo);
            managedErrorLog.setUserId(storedUserInfo);
            saveErrorLogFiles(new NativeException(), managedErrorLog);
            if (minidumpFile.renameTo(file)) {
                return;
            }
            throw new IOException("Failed to move file");
        } catch (Exception e) {
            minidumpFile.delete();
            removeAllStoredErrorLogFiles(managedErrorLog.getId());
            AppCenterLog.error("AppCenterCrashes", "Failed to process new minidump file: " + minidumpFile, e);
        }
    }

    private void processPendingErrors() {
        File[] storedErrorLogFiles;
        for (File file : ErrorLogHelper.getStoredErrorLogFiles()) {
            AppCenterLog.debug("AppCenterCrashes", "Process pending error file: " + file);
            String read = FileManager.read(file);
            if (read != null) {
                try {
                    ManagedErrorLog managedErrorLog = (ManagedErrorLog) this.mLogSerializer.deserializeLog(read, null);
                    UUID id = managedErrorLog.getId();
                    ErrorReport buildErrorReport = buildErrorReport(managedErrorLog);
                    if (buildErrorReport == null) {
                        removeAllStoredErrorLogFiles(id);
                    } else {
                        if (this.mAutomaticProcessing && !this.mCrashesListener.shouldProcess(buildErrorReport)) {
                            AppCenterLog.debug("AppCenterCrashes", "CrashesListener.shouldProcess returned false, clean up and ignore log: " + id.toString());
                            removeAllStoredErrorLogFiles(id);
                        }
                        if (!this.mAutomaticProcessing) {
                            AppCenterLog.debug("AppCenterCrashes", "CrashesListener.shouldProcess returned true, continue processing log: " + id.toString());
                        }
                        this.mUnprocessedErrorReports.put(id, this.mErrorReportCache.get(id));
                    }
                } catch (JSONException e) {
                    AppCenterLog.error("AppCenterCrashes", "Error parsing error log. Deleting invalid file: " + file, e);
                    file.delete();
                }
            }
        }
        boolean isMemoryRunningLevelWasReceived = isMemoryRunningLevelWasReceived(SharedPreferencesManager.getInt("com.microsoft.appcenter.crashes.memory", -1));
        this.mHasReceivedMemoryWarningInLastSession = isMemoryRunningLevelWasReceived;
        if (isMemoryRunningLevelWasReceived) {
            AppCenterLog.debug("AppCenterCrashes", "The application received a low memory warning in the last session.");
        }
        SharedPreferencesManager.remove("com.microsoft.appcenter.crashes.memory");
        if (this.mAutomaticProcessing) {
            sendCrashReportsOrAwaitUserConfirmation();
        }
    }

    private boolean sendCrashReportsOrAwaitUserConfirmation() {
        final boolean z = SharedPreferencesManager.getBoolean("com.microsoft.appcenter.crashes.always.send", false);
        HandlerUtils.runOnUiThread(new Runnable() { // from class: com.microsoft.appcenter.crashes.Crashes.11
            @Override // java.lang.Runnable
            public void run() {
                if (Crashes.this.mUnprocessedErrorReports.size() > 0) {
                    if (!z) {
                        if (Crashes.this.mAutomaticProcessing) {
                            if (!Crashes.this.mCrashesListener.shouldAwaitUserConfirmation()) {
                                AppCenterLog.debug("AppCenterCrashes", "CrashesListener.shouldAwaitUserConfirmation returned false, will send logs.");
                                Crashes.this.handleUserConfirmation(0);
                                return;
                            }
                            AppCenterLog.debug("AppCenterCrashes", "CrashesListener.shouldAwaitUserConfirmation returned true, wait sending logs.");
                            return;
                        }
                        AppCenterLog.debug("AppCenterCrashes", "Automatic processing disabled, will wait for explicit user confirmation.");
                        return;
                    }
                    AppCenterLog.debug("AppCenterCrashes", "The flag for user confirmation is set to ALWAYS_SEND, will send logs.");
                    Crashes.this.handleUserConfirmation(0);
                }
            }
        });
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeAllStoredErrorLogFiles(UUID id) {
        ErrorLogHelper.removeStoredErrorLogFile(id);
        removeStoredThrowable(id);
    }

    private void removeStoredThrowable(UUID id) {
        this.mErrorReportCache.remove(id);
        WrapperSdkExceptionManager.deleteWrapperExceptionData(id);
    }

    String buildStackTrace(Exception exception) {
        String format = String.format("%s: %s", exception.getType(), exception.getMessage());
        if (exception.getFrames() == null) {
            return format;
        }
        for (StackFrame stackFrame : exception.getFrames()) {
            format = format + String.format("\n\t at %s.%s(%s:%s)", stackFrame.getClassName(), stackFrame.getMethodName(), stackFrame.getFileName(), stackFrame.getLineNumber());
        }
        return format;
    }

    ErrorReport buildErrorReport(ManagedErrorLog log) {
        UUID id = log.getId();
        if (!this.mErrorReportCache.containsKey(id)) {
            File storedThrowableFile = ErrorLogHelper.getStoredThrowableFile(id);
            String read = (storedThrowableFile == null || storedThrowableFile.length() <= 0) ? null : FileManager.read(storedThrowableFile);
            if (read == null) {
                if ("minidump".equals(log.getException().getType())) {
                    read = android.util.Log.getStackTraceString(new NativeException());
                } else {
                    read = buildStackTrace(log.getException());
                }
            }
            ErrorReport errorReportFromErrorLog = ErrorLogHelper.getErrorReportFromErrorLog(log, read);
            this.mErrorReportCache.put(id, new ErrorLogReport(log, errorReportFromErrorLog, null));
            return errorReportFromErrorLog;
        }
        ErrorReport errorReport = this.mErrorReportCache.get(id).report;
        errorReport.setDevice(log.getDevice());
        return errorReport;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void handleUserConfirmation(final int userConfirmation) {
        post(new Runnable() { // from class: com.microsoft.appcenter.crashes.Crashes.12
            /* JADX WARN: Removed duplicated region for block: B:28:0x00bd  */
            /* JADX WARN: Removed duplicated region for block: B:31:0x00d9  */
            /* JADX WARN: Removed duplicated region for block: B:37:0x00f4 A[SYNTHETIC] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    r10 = this;
                    int r0 = r2
                    r1 = 1
                    if (r0 != r1) goto L2d
                    com.microsoft.appcenter.crashes.Crashes r0 = com.microsoft.appcenter.crashes.Crashes.this
                    java.util.Map r0 = com.microsoft.appcenter.crashes.Crashes.access$900(r0)
                    java.util.Set r0 = r0.keySet()
                    java.util.Iterator r0 = r0.iterator()
                L13:
                    boolean r1 = r0.hasNext()
                    if (r1 == 0) goto L28
                    java.lang.Object r1 = r0.next()
                    java.util.UUID r1 = (java.util.UUID) r1
                    r0.remove()
                    com.microsoft.appcenter.crashes.Crashes r2 = com.microsoft.appcenter.crashes.Crashes.this
                    com.microsoft.appcenter.crashes.Crashes.access$1400(r2, r1)
                    goto L13
                L28:
                    com.microsoft.appcenter.crashes.utils.ErrorLogHelper.cleanPendingMinidumps()
                    goto L102
                L2d:
                    r2 = 2
                    if (r0 != r2) goto L35
                    java.lang.String r0 = "com.microsoft.appcenter.crashes.always.send"
                    com.microsoft.appcenter.utils.storage.SharedPreferencesManager.putBoolean(r0, r1)
                L35:
                    com.microsoft.appcenter.crashes.Crashes r0 = com.microsoft.appcenter.crashes.Crashes.this
                    java.util.Map r0 = com.microsoft.appcenter.crashes.Crashes.access$900(r0)
                    java.util.Set r0 = r0.entrySet()
                    java.util.Iterator r0 = r0.iterator()
                L43:
                    boolean r1 = r0.hasNext()
                    if (r1 == 0) goto L102
                    java.lang.Object r1 = r0.next()
                    java.util.Map$Entry r1 = (java.util.Map.Entry) r1
                    java.lang.Object r3 = r1.getValue()
                    com.microsoft.appcenter.crashes.Crashes$ErrorLogReport r3 = (com.microsoft.appcenter.crashes.Crashes.ErrorLogReport) r3
                    com.microsoft.appcenter.crashes.model.ErrorReport r4 = com.microsoft.appcenter.crashes.Crashes.ErrorLogReport.access$1200(r3)
                    com.microsoft.appcenter.ingestion.models.Device r4 = r4.getDevice()
                    r5 = 0
                    if (r4 == 0) goto Lab
                    com.microsoft.appcenter.crashes.model.ErrorReport r4 = com.microsoft.appcenter.crashes.Crashes.ErrorLogReport.access$1200(r3)
                    com.microsoft.appcenter.ingestion.models.Device r4 = r4.getDevice()
                    java.lang.String r4 = r4.getWrapperSdkName()
                    java.lang.String r6 = "appcenter.ndk"
                    boolean r4 = r6.equals(r4)
                    if (r4 == 0) goto Lab
                    com.microsoft.appcenter.crashes.ingestion.models.ManagedErrorLog r4 = com.microsoft.appcenter.crashes.Crashes.ErrorLogReport.access$1500(r3)
                    com.microsoft.appcenter.crashes.ingestion.models.Exception r4 = r4.getException()
                    java.lang.String r6 = r4.getMinidumpFilePath()
                    r4.setMinidumpFilePath(r5)
                    if (r6 != 0) goto L8c
                    java.lang.String r6 = r4.getStackTrace()
                    r4.setStackTrace(r5)
                L8c:
                    if (r6 == 0) goto La4
                    java.io.File r5 = new java.io.File
                    r5.<init>(r6)
                    byte[] r4 = com.microsoft.appcenter.utils.storage.FileManager.readBytes(r5)
                    java.lang.String r6 = "minidump.dmp"
                    java.lang.String r7 = "application/octet-stream"
                    com.microsoft.appcenter.crashes.ingestion.models.ErrorAttachmentLog r4 = com.microsoft.appcenter.crashes.ingestion.models.ErrorAttachmentLog.attachmentWithBinary(r4, r6, r7)
                    r9 = r5
                    r5 = r4
                    r4 = r9
                    goto Lac
                La4:
                    java.lang.String r4 = "AppCenterCrashes"
                    java.lang.String r6 = "NativeException found without minidump."
                    com.microsoft.appcenter.utils.AppCenterLog.warn(r4, r6)
                Lab:
                    r4 = r5
                Lac:
                    com.microsoft.appcenter.crashes.Crashes r6 = com.microsoft.appcenter.crashes.Crashes.this
                    com.microsoft.appcenter.channel.Channel r6 = com.microsoft.appcenter.crashes.Crashes.access$1600(r6)
                    com.microsoft.appcenter.crashes.ingestion.models.ManagedErrorLog r7 = com.microsoft.appcenter.crashes.Crashes.ErrorLogReport.access$1500(r3)
                    java.lang.String r8 = "groupErrors"
                    r6.enqueue(r7, r8, r2)
                    if (r5 == 0) goto Ld1
                    com.microsoft.appcenter.crashes.Crashes r6 = com.microsoft.appcenter.crashes.Crashes.this
                    com.microsoft.appcenter.crashes.ingestion.models.ManagedErrorLog r7 = com.microsoft.appcenter.crashes.Crashes.ErrorLogReport.access$1500(r3)
                    java.util.UUID r7 = r7.getId()
                    java.util.Set r5 = java.util.Collections.singleton(r5)
                    com.microsoft.appcenter.crashes.Crashes.access$800(r6, r7, r5)
                    r4.delete()
                Ld1:
                    com.microsoft.appcenter.crashes.Crashes r4 = com.microsoft.appcenter.crashes.Crashes.this
                    boolean r4 = com.microsoft.appcenter.crashes.Crashes.access$1100(r4)
                    if (r4 == 0) goto Lf4
                    com.microsoft.appcenter.crashes.Crashes r4 = com.microsoft.appcenter.crashes.Crashes.this
                    com.microsoft.appcenter.crashes.CrashesListener r4 = com.microsoft.appcenter.crashes.Crashes.access$600(r4)
                    com.microsoft.appcenter.crashes.model.ErrorReport r5 = com.microsoft.appcenter.crashes.Crashes.ErrorLogReport.access$1200(r3)
                    java.lang.Iterable r4 = r4.getErrorAttachments(r5)
                    com.microsoft.appcenter.crashes.Crashes r5 = com.microsoft.appcenter.crashes.Crashes.this
                    com.microsoft.appcenter.crashes.ingestion.models.ManagedErrorLog r3 = com.microsoft.appcenter.crashes.Crashes.ErrorLogReport.access$1500(r3)
                    java.util.UUID r3 = r3.getId()
                    com.microsoft.appcenter.crashes.Crashes.access$800(r5, r3, r4)
                Lf4:
                    r0.remove()
                    java.lang.Object r1 = r1.getKey()
                    java.util.UUID r1 = (java.util.UUID) r1
                    com.microsoft.appcenter.crashes.utils.ErrorLogHelper.removeStoredErrorLogFile(r1)
                    goto L43
                L102:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.microsoft.appcenter.crashes.Crashes.RunnableC258612.run():void");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendErrorAttachment(UUID errorId, Iterable<ErrorAttachmentLog> attachments) {
        if (attachments == null) {
            AppCenterLog.debug("AppCenterCrashes", "Error report: " + errorId.toString() + " does not have any attachment.");
            return;
        }
        for (ErrorAttachmentLog errorAttachmentLog : attachments) {
            if (errorAttachmentLog != null) {
                errorAttachmentLog.setId(UUID.randomUUID());
                errorAttachmentLog.setErrorId(errorId);
                if (!errorAttachmentLog.isValid()) {
                    AppCenterLog.error("AppCenterCrashes", "Not all required fields are present in ErrorAttachmentLog.");
                } else if (errorAttachmentLog.getData().length > 7340032) {
                    AppCenterLog.error("AppCenterCrashes", String.format(Locale.ENGLISH, "Discarding attachment with size above %d bytes: size=%d, fileName=%s.", 7340032, Integer.valueOf(errorAttachmentLog.getData().length), errorAttachmentLog.getFileName()));
                } else {
                    this.mChannel.enqueue(errorAttachmentLog, "groupErrors", 1);
                }
            } else {
                AppCenterLog.warn("AppCenterCrashes", "Skipping null ErrorAttachmentLog.");
            }
        }
    }

    public UUID saveUncaughtException(Thread thread, Throwable throwable) {
        try {
            return saveUncaughtException(thread, throwable, ErrorLogHelper.getModelExceptionFromThrowable(throwable));
        } catch (IOException e) {
            AppCenterLog.error("AppCenterCrashes", "Error writing error log to file", e);
            return null;
        } catch (JSONException e2) {
            AppCenterLog.error("AppCenterCrashes", "Error serializing error log to JSON", e2);
            return null;
        }
    }

    UUID saveUncaughtException(Thread thread, Throwable throwable, Exception modelException) throws JSONException, IOException {
        if (isEnabled().get().booleanValue() && !this.mSavedUncaughtException) {
            this.mSavedUncaughtException = true;
            return saveErrorLogFiles(throwable, ErrorLogHelper.createErrorLog(this.mContext, thread, modelException, Thread.getAllStackTraces(), this.mInitializeTimestamp, true));
        }
        return null;
    }

    private UUID saveErrorLogFiles(Throwable throwable, ManagedErrorLog errorLog) throws JSONException, IOException {
        File errorStorageDirectory = ErrorLogHelper.getErrorStorageDirectory();
        UUID id = errorLog.getId();
        String uuid = id.toString();
        AppCenterLog.debug("AppCenterCrashes", "Saving uncaught exception.");
        File file = new File(errorStorageDirectory, uuid + ".json");
        FileManager.write(file, this.mLogSerializer.serializeLog(errorLog));
        AppCenterLog.debug("AppCenterCrashes", "Saved JSON content for ingestion into " + file);
        return id;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void saveMemoryRunningLevel(int level) {
        SharedPreferencesManager.putInt("com.microsoft.appcenter.crashes.memory", level);
        AppCenterLog.debug("AppCenterCrashes", String.format("The memory running level (%s) was saved.", Integer.valueOf(level)));
    }

    /* loaded from: classes4.dex */
    private static class DefaultCrashesListener extends AbstractCrashesListener {
        private DefaultCrashesListener() {
        }

        /* synthetic */ DefaultCrashesListener(RunnableC25831 runnableC25831) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class ErrorLogReport {
        private final ManagedErrorLog log;
        private final ErrorReport report;

        /* synthetic */ ErrorLogReport(ManagedErrorLog managedErrorLog, ErrorReport errorReport, RunnableC25831 runnableC25831) {
            this(managedErrorLog, errorReport);
        }

        private ErrorLogReport(ManagedErrorLog log, ErrorReport report) {
            this.log = log;
            this.report = report;
        }
    }
}
