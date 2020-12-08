package com.example.stu_share;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import com.google.android.material.bottomnavigation.BottomNavigationView;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;

import butterknife.BindView;
import butterknife.ButterKnife;


public class AdminMyProfileEdit extends AppCompatActivity {


    Button btnSubmit;
    TextView editFn,editLn,editQ,editA;
    private User user;

    @BindView(R.id.toolbar)
    public Toolbar toolBar;

    private final String urlWebService="https://w0044421.gblearn.com/stu_share/user_update.php";
    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);


        user=(User)getIntent().getSerializableExtra("user");
        setContentView(R.layout.activity_admin_profile_edit);


        ButterKnife.bind(this);
        toolBar.setTitle(getResources().getString(R.string.profile));
        setSupportActionBar(toolBar);

        BottomNavigationView navigation = findViewById(R.id.include90);
        navigation.setOnNavigationItemSelectedListener(new BottomNavigationView.OnNavigationItemSelectedListener() {
            @Override
            public boolean onNavigationItemSelected(@NonNull MenuItem item) {
                switch (item.getItemId()) {
                    case R.id.action_adminEventList:
                        Intent intent = new Intent(getBaseContext(), AdminEventList.class);
                        intent.putExtra("user",user);
                        startActivity(intent);
                        break;
                    case R.id.action_message:
                        Intent intent1 = new Intent(getApplicationContext(), AdminMessageList.class);
                        intent1.putExtra("user",user);
                        startActivity(intent1);
                        break;
                    case R.id.action_adminUserList:
                        Intent intent2 = new Intent(getBaseContext(), AdminUserList.class);
                        intent2.putExtra("user",user);
                        startActivity(intent2);
                        break;

                    case R.id.action_profile:
                        Intent i= new Intent(getBaseContext(),AdminMyProfile.class);
                        i.putExtra("user",user);
                        startActivity(i);
                        break;
                }
                return false;
            }
        });
        AdminDrawerUtil.getDrawer(this,toolBar);

        editFn=findViewById(R.id.editFirstName);
        editFn.setText(user.firstName);
        editLn=findViewById(R.id.editLastName);
        editLn.setText(user.lastName);
        editQ=findViewById(R.id.editQuestion);
        editQ.setText(user.question);
        editA=findViewById(R.id.editAnswer);
        editA.setText(user.answer);
        btnSubmit = findViewById(R.id.btnSubmit);
        btnSubmit.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(user.role.equals("admin")){
                    user.setFirstName(editFn.getText().toString());
                    user.setLastName(editLn.getText().toString());
                    user.setQuestion(editQ.getText().toString());
                    user.setAnswer(editA.getText().toString());
                    Toast.makeText(getBaseContext(), "Profile has been updated",
                            Toast.LENGTH_LONG).show();
                    updateUser(user,urlWebService);
                    Intent intent = new Intent(getBaseContext(), MyProfile.class);
                    intent.putExtra("user",user);
                    startActivity(intent);
                }else{

                    user.setFirstName(editFn.getText().toString());
                    user.setLastName(editLn.getText().toString());
                    user.setQuestion(editQ.getText().toString());
                    user.setAnswer(editA.getText().toString());
                    Toast.makeText(getBaseContext(), "Profile has been updated",
                            Toast.LENGTH_LONG).show();
                    updateUser(user,urlWebService);
                    Intent intent = new Intent(getBaseContext(), EventList.class);
                    intent.putExtra("user",user);
                    startActivity(intent);
                }

            }
        });



    }


    private void updateUser(final User user, final String urlWebService) {
        Thread thread = new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    URL url = new URL(urlWebService);
                    HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                    conn.setRequestMethod("POST");
                    conn.setRequestProperty("Content-Type", "application/json;charset=UTF-8");
                    conn.setRequestProperty("Accept", "application/json");
                    conn.setDoOutput(true);
                    conn.setDoInput(true);

                    JSONObject jsonParam = new JSONObject();
                    jsonParam.put("userId", user.id);
                    jsonParam.put("firstname", user.firstName);
                    jsonParam.put("lastname", user.lastName);
                    jsonParam.put("question", user.question);
                    jsonParam.put("answer", user.answer);

                    Log.i("JSON", jsonParam.toString());
                    DataOutputStream os = new DataOutputStream(conn.getOutputStream());
                    BufferedWriter writer = new BufferedWriter(
                            new OutputStreamWriter(os, "UTF-8"));
                    os.writeBytes(jsonParam.toString());
                    os.flush();
                    os.close();
                    conn.connect();
                    Log.i("STATUS", String.valueOf(conn.getResponseCode()));
                    Log.i("MSG", conn.getResponseMessage());

                    BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
                    DataInputStream is = new DataInputStream(conn.getInputStream());

                    StringBuilder total = new StringBuilder();
                    String line;
                    while ((line = in.readLine()) != null) {
                        total.append(line).append('\n');
                    }
                    Log.d("TAG", "Server Response is: " + total.toString() + ": ");
                } catch (UnsupportedEncodingException | JSONException e) {
                    e.printStackTrace();
                } catch (ProtocolException e) {
                    e.printStackTrace();
                } catch (MalformedURLException e) {
                    e.printStackTrace();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }});
        thread.start();
    }
    public void OpenMenuActivity() {
        if(user.role.equals("admin")){
            Intent intent = new Intent(this, AdminEventList.class);
            intent.putExtra("user",user);
            startActivity(intent);
        }else{Intent intent = new Intent(this, MyProfile.class);
            intent.putExtra("user",user);
            startActivity(intent);}
    }

    public void logout(){
        Intent intent =new Intent(this, MainActivity.class);
        intent.putExtra("user",user);
        startActivity(intent);
    }

    public void openMyEventsActivity(){
        Intent intent =new Intent(this, EventMyEvents.class);
        intent.putExtra("user",user);
        Log.d("TAG","Menu to MyEvent"+user.id);
        startActivity(intent);
    }

    public void OpenCreateActivity() {
        Intent intent = new Intent(this, EventCreateDescription.class);
        intent.putExtra("user",user);
        startActivity(intent);
    }
}
