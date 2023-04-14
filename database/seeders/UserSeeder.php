<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use App\Models\User;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $spiderman = new User;
        $spiderman->name = "Spiderman";
        $spiderman->real_name = "Peter Benjamin Parker";
        $spiderman->gender = "Male";
        $spiderman->universe_id = 4;
        $spiderman->email = "spiderman@gmail.com";
        $spiderman->password = Hash::make("Spiderman123");
        $spiderman->save();
        
        $hulk = new User;
        $hulk->name = "Hulk";
        $hulk->real_name = "Robert Bruce Banner";
        $hulk->gender = "Male";
        $hulk->universe_id = 4;
        $hulk->email = "hulk@gmail.com";
        $hulk->password = Hash::make("Hulk123");
        $hulk->save();
        
        $cap = new User;
        $cap->name = "Captain America";
        $cap->real_name = "Steven Rogers";
        $cap->gender = "Male";
        $cap->universe_id = 4;
        $cap->email = "cap@gmail.com";
        $cap->password = Hash::make("Cap123");
        $cap->save();

        $superman = new User;
        $superman->name = "Superman";
        $superman->real_name = "Clark Kent";
        $superman->gender = "Male";
        $superman->universe_id = 2;
        $superman->email = "superman@gmail.com";
        $superman->password = Hash::make("Superman123");
        $superman->save();

        $batman = new User;
        $batman->name = "Batman";
        $batman->real_name = "Bruce Wayne";
        $batman->gender = "Male";
        $batman->universe_id = 1;
        $batman->email = "batman@gmail.com";
        $batman->password = Hash::make("Batman123");
        $batman->save();
        
        $scarletsp = new User;
        $scarletsp->name = "Scarlet Spider";
        $scarletsp->real_name = "Ben Reilly";
        $scarletsp->gender = "Male";
        $scarletsp->universe_id = 5;
        $scarletsp->email = "scarletsp@gmail.com";
        $scarletsp->password = Hash::make("Scarletsp123");
        $scarletsp->save();
        
        $ww = new User;
        $ww->name = "Wonder Woman";
        $ww->real_name = "Diana Prince";
        $ww->gender = "Female";
        $ww->universe_id = 1;
        $ww->email = "wonder@gmail.com";
        $ww->password = Hash::make("Wonder123");
        $ww->save();

        $doom = new User;
        $doom->name = "Doomsday";
        $doom->real_name = "";
        $doom->gender = "Male";
        $doom->universe_id = 3;
        $doom->email = "doom@gmail.com";
        $doom->password = Hash::make("Doom123");
        $doom->save();

        $scarletwit = new User;
        $scarletwit->name = "Scarlet Witch";
        $scarletwit->real_name = "Wanda Maximoff";
        $scarletwit->gender = "Female";
        $scarletwit->universe_id = 5;
        $scarletwit->email = "scarletwit@gmail.com";
        $scarletwit->password = Hash::make("ScarletW123");
        $scarletwit->save();

        $night = new User;
        $night->name = "NightWing";
        $night->real_name = "Dick Grayson";
        $night->gender = "Male";
        $night->universe_id = 3;
        $night->email = "nightwing@gmail.com";
        $night->password = Hash::make("Night123");
        $night->save();

    }
}
